import pandas as pd
import pymysql
from datetime import datetime
import numpy as np
import os

# --- Database Configuration ---
DB_CONFIG = {
    'host': os.environ.get('DB_HOST', '10.0.5.170'),
    'user': os.environ.get('DB_USER', 'syntro_flat'),
    'password': os.environ.get('DB_PASSWORD', '12345678'),
    'db': os.environ.get('DB_NAME', 'syntro'),
    'charset': os.environ.get('DB_CHARSET', 'utf8mb4'),
    'cursorclass': pymysql.cursors.DictCursor
}

DB_CONFIG_FLAT = {
    'host': os.environ.get('DB_HOST_FLAT', '10.0.5.170'),
    'port': int(os.environ.get('DB_PORT_FLAT', 3306)),
    'user': os.environ.get('DB_USER_FLAT', 'syntro_flat'),
    'password': os.environ.get('DB_PASSWORD_FLAT', '12345678'),
    'db': os.environ.get('DB_NAME_FLAT', 'syntro_flat'),
    'charset': os.environ.get('DB_CHARSET_FLAT', 'utf8mb4'),
    'cursorclass': pymysql.cursors.DictCursor
}

def run_etl():
    try:
        connection = pymysql.connect(**DB_CONFIG)
        print("Successfully connected to the source database (syntro).")

        with connection.cursor() as cursor:
            # --- Extraction and Transformation (SQL Query) ---
            sql_query = """
            SELECT
                nf.id AS id_nota_fiscal,
                nf.numero_identificador,
                nf.cnpj_emitente,
                nf.descricao AS descricao_nota_fiscal,
                nf.valor_total,
                nf.data_emissao,
                nf.data_vencimento,
                la_latest.data_hora AS data_aprovacao,
                CASE
                    WHEN nf.ativo = 0 THEN 'inválida'
                    WHEN la_latest.data_hora IS NOT NULL AND la_latest.tipo_acao = 'Aprovação' THEN 'aprovada'
                    ELSE 'pendente'
                END AS status_nota_fiscal,
                lv_latest.detalhe AS motivo_invalidacao,
                nf.id_usuario,
                u.nome_completo AS nome_usuario,
                u.cargo AS cargo_usuario,
                nf.id_empresa,
                nf.nome_empresa AS nome_empresa,
                nf.cnpj_contratante AS cnpj_empresa,
                e_fornecedor.id AS id_fornecedor,
                e_fornecedor.nome_servico AS nome_fornecedor,
                nf.cnpj_fornecedor,
                lv_latest.id AS id_log_validacao,
                lv_latest.modulo AS tipo_validacao,
                lv_latest.data_hora AS data_validacao,
                CASE
                    WHEN (lv_latest.detalhe LIKE '%erro%' OR lv_latest.detalhe LIKE '%falha%') THEN 'Erro'
                    WHEN lv_latest.detalhe IS NOT NULL THEN 'Sucesso'
                    ELSE NULL
                END AS resultado_validacao,
                la_latest.id AS id_log_atividade,
                la_latest.descricao AS descricao_atividade,
                la_latest.data_hora AS data_atividade,
                c.id AS id_contrato,
                c.nome_servico AS nome_servico_contrato,
                c.valor AS valor_contrato,
                c.data_realizacao,
                d.id AS id_departamento,
                d.nome_departamento,
                # Endereco (prioritizing address linked to the supplier company of the nota_fiscal)
                addr.id AS id_endereco,
                addr.cidade AS cidade,
                addr.uf AS estado,
                addr.cep AS cep,
                
                # Derived: tempo_analise
                DATEDIFF(la_latest.data_hora, nf.data_emissao) AS tempo_analise,
                
                # Derived: prioridade
                CASE
                    WHEN nf.valor_total > 10000 THEN 'alta'
                    WHEN nf.valor_total > 5000 THEN 'média'
                    ELSE 'baixa'
                END AS prioridade,
                
                # Derived: status_pagamento
                CASE
                    WHEN nf.data_vencimento < NOW() AND nf.ativo = 1 THEN 'vencida'
                    WHEN nf.data_vencimento >= NOW() AND nf.ativo = 1 THEN 'a vencer'
                    ELSE 'não aplicável' -- For inactive notes
                END AS status_pagamento,
                
                # Derived: tipo_erro (from latest validation log if error)
                CASE
                    WHEN (lv_latest.detalhe LIKE '%erro%' OR lv_latest.detalhe LIKE '%falha%') THEN 'Erro de Validação'
                    ELSE NULL
                END AS tipo_erro

            FROM
                nota_fiscal nf
            LEFT JOIN
                usuario u ON nf.id_usuario = u.id
            LEFT JOIN
                contrato c ON nf.id_contrato = c.id
            LEFT JOIN
                departamento d ON c.id_departamento = d.id -- Assuming departamento is linked via contrato
            LEFT JOIN
                empresa e_fornecedor ON nf.cnpj_fornecedor = e_fornecedor.identificacao_fiscal AND e_fornecedor.fornecedor = 1
            LEFT JOIN (
                SELECT
                    lv_sub.id, lv_sub.data_hora, lv_sub.detalhe, lv_sub.etapa, lv_sub.modulo, lv_sub.nota_fiscal_id
                FROM
                    log_validacao lv_sub
                INNER JOIN (
                    SELECT nota_fiscal_id, MAX(data_hora) AS max_data_hora
                    FROM log_validacao
                    GROUP BY nota_fiscal_id
                ) AS latest_lv_per_nf ON lv_sub.nota_fiscal_id = latest_lv_per_nf.nota_fiscal_id AND lv_sub.data_hora = latest_lv_per_nf.max_data_hora
            ) AS lv_latest ON nf.id = lv_latest.nota_fiscal_id
            LEFT JOIN (
                SELECT
                    la_sub.id, la_sub.data_hora, la_sub.descricao, la_sub.nota_fiscal_id, la_sub.tipo_acao, la_sub.usuario_id
                FROM
                    log_atividade la_sub
                INNER JOIN (
                    SELECT nota_fiscal_id, MAX(data_hora) AS max_data_hora
                    FROM log_atividade
                    WHERE tipo_acao = 'Aprovação' -- Only consider approval activities for data_aprovacao
                    GROUP BY nota_fiscal_id
                ) AS latest_la_per_nf ON la_sub.nota_fiscal_id = latest_la_per_nf.nota_fiscal_id AND la_sub.data_hora = latest_la_per_nf.max_data_hora
            ) AS la_latest ON nf.id = la_latest.nota_fiscal_id
            LEFT JOIN (
                SELECT
                    e_addr.id, e_addr.bairro, e_addr.cep, e_addr.cidade, e_addr.complemento, e_addr.logradouro, e_addr.uf, e_addr.id_fornecedor
                FROM
                    endereco e_addr
                INNER JOIN (
                    SELECT id_fornecedor, MIN(id) AS min_id -- Pick one arbitrary address if multiple exist for a fornecedor
                    FROM endereco
                    WHERE id_fornecedor IS NOT NULL
                    GROUP BY id_fornecedor
                ) AS primary_addr_per_fornecedor ON e_addr.id_fornecedor = primary_addr_per_fornecedor.id_fornecedor AND e_addr.id = primary_addr_per_fornecedor.min_id
            ) AS addr ON e_fornecedor.id = addr.id_fornecedor
            ORDER BY nf.id;
            """
            
            cursor.execute(sql_query)
            result = cursor.fetchall()
            print(f"Extracted {len(result)} rows from the source database.")

            df = pd.DataFrame(result)

            df = df.rename(columns={
                'descricao_nota_fiscal': 'descricao',
                'status_nota_fiscal': 'status',
                'nome_servico_contrato': 'nome_servico'
            })

            expected_columns = [
                'id_nota_fiscal', 'numero_identificador', 'cnpj_emitente', 'descricao', 'valor_total',
                'data_emissao', 'data_vencimento', 'data_aprovacao', 'status', 'motivo_invalidacao',
                'id_usuario', 'nome_usuario', 'cargo_usuario', 'id_empresa', 'nome_empresa',
                'cnpj_empresa', 'id_fornecedor', 'nome_fornecedor', 'id_log_validacao', 'tipo_validacao',
                'data_validacao', 'resultado_validacao', 'id_log_atividade', 'descricao_atividade',
                'data_atividade', 'id_contrato', 'nome_servico', 'valor_contrato',
                'data_realizacao', 'id_departamento', 'nome_departamento', 
                'id_endereco', 'cidade', 'estado', 'cep', 'tempo_analise', 'prioridade', 'status_pagamento', 'tipo_erro'
            ]
            
            for col in expected_columns:
                if col not in df.columns:
                    df[col] = None

            df = df[expected_columns]
            
            # Convert integer columns to nullable integer type to handle NaNs correctly
            int_columns = [
                'id_nota_fiscal', 'id_usuario', 'id_empresa', 'id_fornecedor',
                'id_log_validacao', 'id_log_atividade', 'id_contrato',
                'id_departamento', 'id_endereco', 'tempo_analise'
            ]
            for col in int_columns:
                if col in df.columns:
                    df[col] = df[col].astype('Int64') # Use 'Int64' for nullable integer type
            
            # Explicitly replace numpy.nan and pandas.NA with None
            df = df.replace({np.nan: None, pd.NA: None})
            
            # Replace NaN/NaT with None for SQL compatibility
            df = df.where(pd.notnull(df), None)

    except pymysql.Error as e:
        print(f"Error connecting to or querying the source database: {e}")
        return
    finally:
        if 'connection' in locals() and connection.open:
            connection.close()
            print("Source database connection closed.")

    # --- Loading (to syntro_flat database) ---
    if 'df' in locals() and not df.empty:
        try:
            connection_flat = pymysql.connect(**DB_CONFIG_FLAT)
            print("Successfully connected to the destination database (syntro_flat).")
            with connection_flat.cursor() as cursor_flat:
                # Clear the table before inserting new data
                cursor_flat.execute("TRUNCATE TABLE flattened_data")
                
                # Create a list of tuples from the dataframe values
                data_to_insert = [tuple(x) for x in df.to_numpy()]
                
                # Create the insert query
                cols = ", ".join([f"`{c}`" for c in df.columns])
                placeholders = ", ".join(["%s"] * len(df.columns))
                insert_query = f"INSERT INTO flattened_data ({cols}) VALUES ({placeholders})"
                
                # Execute the insert query
                cursor_flat.executemany(insert_query, data_to_insert)
                connection_flat.commit()
                print(f"Successfully inserted {len(data_to_insert)} rows into syntro_flat.flattened_data.")

        except pymysql.Error as e:
            print(f"Error connecting to or inserting into the destination database: {e}")
        finally:
            if 'connection_flat' in locals() and connection_flat.open:
                connection_flat.close()
                print("Destination database connection closed.")

if __name__ == "__main__":
    run_etl()

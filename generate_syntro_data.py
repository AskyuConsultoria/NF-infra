
import random
from faker import Faker
from datetime import datetime, timedelta

fake = Faker('pt_BR')

# --- Configuration ---
NUM_DEPARTAMENTOS = 500
NUM_EMPRESAS = 500
NUM_USUARIOS = 500
NUM_CONTRATOS = 500
NUM_NOTAS_FISCAIS = 500
NUM_SOLICITACOES = 500
NUM_LOG_VALIDACAO = 500
NUM_LOG_ATIVIDADE = 500
NUM_ENDERECOS = 500

# --- Helper Functions ---
def generate_cnpj():
    return f"{random.randint(10,99)}.{random.randint(100,999)}.{random.randint(100,999)}/{random.randint(1000,9999)}-{random.randint(10,99)}"

def generate_sql_insert(table_name, columns, values):
    cols_str = ", ".join([f"`{col}`" for col in columns])
    values_str = ", ".join([f"'{v}'" if isinstance(v, str) else str(v) for v in values])
    return f"INSERT INTO `{table_name}` ({cols_str}) VALUES ({values_str});"

def generate_password_hash():
    # Placeholder for a more complex hash, for data generation simplicity
    return fake.sha256()

# --- Data Generation ---
all_inserts = []

# 1. Departamento
departamentos_data = []
for i in range(1, NUM_DEPARTAMENTOS + 1):
    nome_departamento = fake.job() + " Dept."
    departamentos_data.append({'id': i, 'nome_departamento': nome_departamento})
    all_inserts.append(generate_sql_insert('departamento', ['id', 'nome_departamento'], [i, nome_departamento]))

# 2. Empresa
empresas_data = []
for i in range(1, NUM_EMPRESAS + 1):
    area_atuacao = fake.bs()
    fornecedor = random.choice([0, 1]) # bit(1)
    identificacao_fiscal = generate_cnpj()
    nome_servico = fake.catch_phrase()
    subsidiaria = fake.company() if random.random() > 0.7 else None
    tipo_identificacao_fiscal = random.randint(1, 3) # Placeholder
    empresas_data.append({
        'id': i,
        'area_atuacao': area_atuacao,
        'fornecedor': fornecedor,
        'identificacao_fiscal': identificacao_fiscal,
        'nome_servico': nome_servico,
        'subsidiaria': subsidiaria,
        'tipo_identificacao_fiscal': tipo_identificacao_fiscal
    })
    all_inserts.append(generate_sql_insert('empresa', empresas_data[-1].keys(), empresas_data[-1].values()))

# 3. Usuario
usuarios_data = []
for i in range(1, NUM_USUARIOS + 1):
    cargo = fake.job()
    email = fake.email()
    id_departamento = random.choice([d['id'] for d in departamentos_data])
    nome_completo = fake.name()
    nome_usuario = fake.user_name()
    representante_externo = random.choice([0, 1])
    representante_interno = 1 if not representante_externo else 0
    senha = generate_password_hash()
    id_empresa = random.choice([e['id'] for e in empresas_data]) if random.random() > 0.5 else None
    usuarios_data.append({
        'id': i,
        'cargo': cargo,
        'email': email,
        'id_departamento': id_departamento,
        'nome_completo': nome_completo,
        'nome_usuario': nome_usuario,
        'representante_externo': representante_externo,
        'representante_interno': representante_interno,
        'senha': senha,
        'id_empresa': id_empresa
    })
    all_inserts.append(generate_sql_insert('usuario', usuarios_data[-1].keys(), usuarios_data[-1].values()))

# 4. Contrato
contratos_data = []
for i in range(1, NUM_CONTRATOS + 1):
    data_realizacao = fake.date_time_between(start_date='-2y', end_date='now').strftime('%Y-%m-%d %H:%M:%S.%f')
    descricao = fake.text(max_nb_chars=100)
    id_departamento = random.choice([d['id'] for d in departamentos_data])
    id_empresa = random.choice([e['id'] for e in empresas_data])
    nome_moeda = random.choice(['BRL', 'USD', 'EUR'])
    nome_servico = fake.catch_phrase()
    status_contrato = random.choice([0, 1])
    tempo_contrato = f"{random.randint(1, 24)} meses"
    valor = round(random.uniform(1000, 100000), 2)
    contratos_data.append({
        'id': i,
        'data_realizacao': data_realizacao,
        'descricao': descricao,
        'id_departamento': id_departamento,
        'id_empresa': id_empresa,
        'nome_moeda': nome_moeda,
        'nome_servico': nome_servico,
        'status_contrato': status_contrato,
        'tempo_contrato': tempo_contrato,
        'valor': valor
    })
    all_inserts.append(generate_sql_insert('contrato', contratos_data[-1].keys(), contratos_data[-1].values()))

# 5. Nota_Fiscal
notas_fiscais_data = []
for i in range(1, NUM_NOTAS_FISCAIS + 1):
    cnpj_contratante = generate_cnpj()
    nome_empresa = fake.company()
    cnpj_fornecedor = generate_cnpj()
    endereco_fornecedor = fake.address().replace('\n', ', ')
    data_vencimento = fake.date_time_between(start_date='now', end_date='+1y').strftime('%Y-%m-%d %H:%M:%S.%f')
    numero = fake.unique.random_int(min=10000, max=99999)
    descricao = fake.sentence()
    valor_total = round(random.uniform(100, 50000), 2)
    ativo = random.choice([0, 1])
    aliquota = round(random.uniform(0.05, 0.2), 2) if random.random() > 0.3 else None
    base_calculo = round(valor_total * random.uniform(0.8, 1.0), 2) if aliquota else None
    cnpj_emitente = generate_cnpj()
    credito_iptu = round(random.uniform(10, 500), 2) if random.random() > 0.7 else None
    data_emissao = fake.date_time_between(start_date='-1y', end_date='-1d').strftime('%Y-%m-%d %H:%M:%S.%f')
    id_contrato = random.choice([c['id'] for c in contratos_data]) if random.random() > 0.2 else None
    informacao_adicional = fake.text(max_nb_chars=100) if random.random() > 0.5 else None
    inscricao_municipal = str(fake.unique.random_int(min=1000000, max=9999999)) if random.random() > 0.4 else None
    nome_moeda = random.choice(['BRL', 'USD', 'EUR'])
    numero_identificador = fake.uuid4()
    tipo_nota = random.choice(['Serviço', 'Produto', 'Mista'])
    valor_deducoes = round(random.uniform(0, 0.1) * valor_total, 2) if random.random() > 0.6 else None
    valor_inss = round(random.uniform(0, 0.05) * valor_total, 2) if random.random() > 0.6 else None
    id_empresa = random.choice([e['id'] for e in empresas_data])
    id_usuario = random.choice([u['id'] for u in usuarios_data])

    notas_fiscais_data.append({
        'id': i,
        'cnpj_contratante': cnpj_contratante,
        'nome_empresa': nome_empresa,
        'cnpj_fornecedor': cnpj_fornecedor,
        'endereco_fornecedor': endereco_fornecedor,
        'data_vencimento': data_vencimento,
        'numero': numero,
        'descricao': descricao,
        'valor_total': valor_total,
        'ativo': ativo,
        'aliquota': aliquota,
        'base_calculo': base_calculo,
        'cnpj_emitente': cnpj_emitente,
        'credito_iptu': credito_iptu,
        'data_emissao': data_emissao,
        'id_contrato': id_contrato,
        'informacao_adicional': informacao_adicional,
        'inscricao_municipal': inscricao_municipal,
        'nome_moeda': nome_moeda,
        'numero_identificador': numero_identificador,
        'tipo_nota': tipo_nota,
        'valor_deducoes': valor_deducoes,
        'valor_inss': valor_inss,
        'id_empresa': id_empresa,
        'id_usuario': id_usuario
    })
    all_inserts.append(generate_sql_insert('nota_fiscal', notas_fiscais_data[-1].keys(), notas_fiscais_data[-1].values()))

# 6. Endereco
enderecos_data = []
for i in range(1, NUM_ENDERECOS + 1):
    bairro = fake.bairro()
    cep = int(fake.postcode().replace('-', ''))
    cidade = fake.city()
    complemento = fake.word() if random.random() > 0.5 else None
    id_fornecedor = random.choice([e['id'] for e in empresas_data if e['fornecedor'] == 1]) if random.random() > 0.5 else None
    id_usuario = random.choice([u['id'] for u in usuarios_data]) if random.random() > 0.5 else None
    logradouro = fake.street_address()
    uf = fake.state_abbr()
    enderecos_data.append({
        'id': i,
        'bairro': bairro,
        'cep': cep,
        'cidade': cidade,
        'complemento': complemento,
        'id_fornecedor': id_fornecedor,
        'id_usuario': id_usuario,
        'logradouro': logradouro,
        'uf': uf
    })
    all_inserts.append(generate_sql_insert('endereco', enderecos_data[-1].keys(), enderecos_data[-1].values()))

# 7. Log_Validacao
log_validacao_data = []
for i in range(1, NUM_LOG_VALIDACAO + 1):
    data_hora = fake.date_time_between(start_date='-6m', end_date='now').strftime('%Y-%m-%d %H:%M:%S.%f')
    detalhe = fake.sentence()
    etapa = random.randint(1, 5)
    modulo = random.choice(['SEFAZ', 'Interno', 'Auditoria'])
    nota_fiscal_id = random.choice([nf['id'] for nf in notas_fiscais_data])
    log_validacao_data.append({
        'id': i,
        'data_hora': data_hora,
        'detalhe': detalhe,
        'etapa': etapa,
        'modulo': modulo,
        'nota_fiscal_id': nota_fiscal_id
    })
    all_inserts.append(generate_sql_insert('log_validacao', log_validacao_data[-1].keys(), log_validacao_data[-1].values()))

# 8. Log_Atividade
log_atividade_data = []
for i in range(1, NUM_LOG_ATIVIDADE + 1):
    data_hora = fake.date_time_between(start_date='-6m', end_date='now').strftime('%Y-%m-%d %H:%M:%S.%f')
    descricao = fake.sentence()
    nota_fiscal_id = random.choice([nf['id'] for nf in notas_fiscais_data])
    tipo_acao = random.choice(['Aprovação', 'Recusa', 'Edição', 'Visualização'])
    usuario_id = random.choice([u['id'] for u in usuarios_data])
    log_atividade_data.append({
        'id': i,
        'data_hora': data_hora,
        'descricao': descricao,
        'nota_fiscal_id': nota_fiscal_id,
        'tipo_acao': tipo_acao,
        'usuario_id': usuario_id
    })
    all_inserts.append(generate_sql_insert('log_atividade', log_atividade_data[-1].keys(), log_atividade_data[-1].values()))

# 9. Solicitacao_Servico
solicitacoes_data = []
for i in range(1, NUM_SOLICITACOES + 1):
    card_id = fake.unique.random_int(min=1000, max=9999)
    email = fake.email()
    operacao = random.choice(['Congelamento', 'Cadastro', 'Aprovação justificada', 'Cancelamento'])
    justificativa = fake.text(max_nb_chars=100)
    nota_fiscal_id = random.choice([nf['id'] for nf in notas_fiscais_data])
    ativo = random.choice([0, 1])
    solicitacoes_data.append({
        'id': i,
        'card_id': card_id,
        'email': email,
        'operacao': operacao,
        'justificativa': justificativa,
        'nota_fiscal_id': nota_fiscal_id,
        'ativo': ativo
    })
    all_inserts.append(generate_sql_insert('solicitacao_servico', solicitacoes_data[-1].keys(), solicitacoes_data[-1].values()))

# --- Output to SQL file ---
original_sql_path = "/home/krikas/Documentos/SPTECH/Syntro/NF-infra/scripts/database_hom_syntro.sql"
output_sql_path = "/home/krikas/Documentos/SPTECH/Syntro/NF-infra/scripts/database_hom_syntro_large.sql"

# Read original SQL to get CREATE TABLE statements
with open(original_sql_path, 'r', encoding='utf-8') as f:
    original_sql_content = f.read()

create_table_statements = []
# Simple regex to find CREATE TABLE statements and preceding DROP TABLE
import re
for match in re.finditer(r"(DROP TABLE IF EXISTS `\w+`;\s*CREATE TABLE `\w+` [^;]+;)", original_sql_content, re.DOTALL):
    create_table_statements.append(match.group(1))

# Add GRANT and FLUSH PRIVILEGES, create and use database
header_sql = """
GRANT ALL PRIVILEGES ON *.* TO 'syntro'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
create database IF NOT EXISTS syntro;
use syntro;
"""

with open(output_sql_path, 'w', encoding='utf-8') as f:
    f.write(header_sql)
    f.write("\n".join(create_table_statements))
    f.write("\n\n-- --- Generated Data --- --\n\n")
    for insert_statement in all_inserts:
        f.write(insert_statement + "\n")

print(f"Generated large dataset SQL to {output_sql_path}")

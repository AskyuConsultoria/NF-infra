import boto3
import csv
import os
import json
import datetime
from collections import defaultdict
from io import StringIO
import urllib.parse

s3 = boto3.client('s3')
sns = boto3.client('sns')

def handler(event, context):    
    try:
        record = event['Records'][0]
        bucket_origem = record['s3']['bucket']['name']
        chave_arquivo = urllib.parse.unquote_plus(record['s3']['object']['key'])

        print(f"Processando arquivo: {chave_arquivo} do bucket: {bucket_origem}")

        response = s3.get_object(Bucket=bucket_origem, Key=chave_arquivo)
        conteudo = response['Body'].read().decode('utf-8-sig')
        data_atual = datetime.datetime.now()

        leitor = csv.reader(StringIO(conteudo),  delimiter=';')
        qtd_registro = 0
    
        for linha in leitor:
            qtd_registro += 1

        sns_topic = os.environ['SNS_TOPIC']
        mensagem_email = f"""
        Processamento concluído!
        
        Arquivo processado: {chave_arquivo}
        Total de registros: {qtd_registro}
        Data do processamento: {data_atual}
        """

        sns.publish(
            TopicArn=sns_topic,
            Subject="Resultado do processamento do CSV",
            Message=mensagem_email
        )

        return {
            "statusCode": 200,
            "body": json.dumps({
                "mensagem": "Arquivo processado com sucesso",
                "origem": f"s3://{bucket_origem}/{chave_arquivo}",
            })
        }

    except Exception as e:
        print("Erro ao processar:", str(e))
        return {
            "statusCode": 500,
            "body": json.dumps({"erro": str(e)})
        }

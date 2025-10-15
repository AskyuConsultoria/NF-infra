#!/bin/bash

set -e 

echo "[1] Inicializando o Terraform..."
terraform init

echo "[2] Aplicando o Terraform..."
terraform apply -var-file="envs/dev.tfvars" -var "aws_access_key_id=$AWS_ACCESS_KEY_ID" \
  -var "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" \
  -var "aws_session_token=$AWS_SESSION_TOKEN" \
  -auto-approve

echo "[3] Aguardando output do Terraform..."
PUBLIC_IP=$(terraform output -raw bastion_public_ip)
PRIVATE_IP=$(terraform output -raw private_instance_ip)
RAW_UNS_BUCKET_NAME=$(terraform output -raw unstructured-bucket-name)
RAW_ST_BUCKET_NAME=$(terraform output -raw structured-bucket-name)
TRUSTED_BUCKET=$(terraform output -raw trusted-bucket-name)

if [[ -z "$PUBLIC_IP" || -z "$PRIVATE_IP" ]]; then
  echo "❌ Erro: Não foi possível obter os IPs das instâncias!"
  exit 1
fi


echo "[4] Iniciando provisionamento..."
chmod +x deploy.sh
./deploy.sh "$PUBLIC_IP" "$PRIVATE_IP"

chmod +x deploy_bastion.sh
./deploy_bastion.sh "$PUBLIC_IP" "$PRIVATE_IP" "$RAW_UNS_BUCKET_NAME" "$RAW_ST_BUCKET_NAME" "$TRUSTED_BUCKET"

echo "[5] Infraestrutura criada com sucesso!"
echo "[6] IPs obtidos com sucesso!"
echo "   - IP Público: $PUBLIC_IP"
echo "   - IP Privado: $PRIVATE_IP"
echo "   - Nome do Bucket RAW: $RAW_UNS_BUCKET_NAME"

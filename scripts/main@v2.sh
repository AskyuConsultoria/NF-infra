#!/bin/bash

set -e 

echo "[1] Inicializando o Terraform..."
terraform init

AWS_ACCESS_KEY_ID=$(awk -F ' = ' '/aws_access_key_id/ {print $2}' ~/.aws/credentials)
AWS_SECRET_ACCESS_KEY=$(awk -F ' = ' '/aws_secret_access_key/ {print $2}' ~/.aws/credentials)
AWS_SESSION_TOKEN=$(awk -F ' = ' '/aws_session_token/ {print $2}' ~/.aws/credentials)

export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY
export AWS_SESSION_TOKEN

echo "[2] Aplicando o Terraform..."
terraform apply -var-file="envs/dev.tfvars" -var "aws_access_key_id=$AWS_ACCESS_KEY_ID" \
  -var "aws_secret_access_key=$AWS_SECRET_ACCESS_KEY" \
  -var "aws_session_token=$AWS_SESSION_TOKEN" \
  -auto-approve


echo "[3] Aguardando output do Terraform..."
PUBLIC_IP=$(terraform output -json bastion_public_ip | jq -r '.[0][]')
echo "DEBUG: PUBLIC_IP=$PUBLIC_IP"
PRIVATE_IP=$(terraform output -raw private_instance_ip)
RAW_UNS_BUCKET_NAME=$(terraform output -raw unstructured-bucket-name)
RAW_ST_BUCKET_NAME=$(terraform output -raw structured-bucket-name)
TRUSTED_BUCKET=$(terraform output -raw trusted-bucket-name)

echo "[4] Salvando fingerprints"
for ip in $PUBLIC_IP; do
  ssh-keyscan -H "$ip" >> ~/.ssh/known_hosts
done

echo "[5] Enviando chave privada para as instâncias públicas..."
for ip in $PUBLIC_IP; do
  scp -i ~/.ssh/pbkey-ges -o StrictHostKeyChecking=no ~/.ssh/pvkey-ges "ubuntu@$ip:~"
  ssh -i ~/.ssh/pbkey-ges "ubuntu@$ip" "ssh-keyscan -H $PRIVATE_IP" >> ~/.ssh/known_hosts
done



if [[ -z "$PUBLIC_IP" || -z "$PRIVATE_IP" ]]; then
  echo "❌ Erro: Não foi possível obter os IPs das instâncias!"
  exit 1
fi

echo "[6] Iniciando provisionamento..."
ansible-playbook -i inventory.ini deploy-config.yaml
ansible-playbook -i inventory.ini deploy-bd.yaml
ansible-playbook -i inventory.ini deploy-backend.yaml
ansible-playbook -i inventory.ini deploy-frontend.yaml

echo "[7] Infraestrutura criada com sucesso!"
echo "[8] IPs obtidos com sucesso!"
echo "   - IP Público: $PUBLIC_IP"
echo "   - IP Privado: $PRIVATE_IP"
echo "   - Nome do Bucket RAW: $RAW_UNS_BUCKET_NAME"

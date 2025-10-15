
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

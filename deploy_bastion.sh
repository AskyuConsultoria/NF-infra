#!/bin/bash
PUBLIC_IP=$1
PRIVATE_IP=$2
RAW_UNS_BUCKET_NAME=$3
RAW_ST_BUCKET_NAME=$4
TRUSTED_BUCKET=$5

BASTION_KEY="./chaves/pbkey-ges" 
USER="ubuntu"

chmod +x generate_conf.sh 
bash generate_conf.sh $PUBLIC_IP $RAW_UNS_BUCKET_NAME $RAW_ST_BUCKET_NAME $TRUSTED_BUCKET

scp -i "$BASTION_KEY" -o StrictHostKeyChecking=no "default.conf" "$USER@$PUBLIC_IP:/home/ubuntu"
scp -i "$BASTION_KEY" -o StrictHostKeyChecking=no "backend.dockerfile" "$USER@$PUBLIC_IP:/home/ubuntu"
scp -i "$BASTION_KEY" -o StrictHostKeyChecking=no ".env" "$USER@$PUBLIC_IP:/home/ubuntu"

ssh -i "$BASTION_KEY" "$USER@$PUBLIC_IP" << EOF
 git clone https://github.com/AskyuConsultoria/NF-deployment-website.git
 git clone https://github.com/AskyuConsultoria/NFSiteWeb.git
 git clone https://github.com/AskyuConsultoria/NF-deployment-backend.git

 sudo apt update -y
 sudo apt upgrade -y

 curl -fsSL https://get.docker.com -o get-docker.sh

 if ! command -v docker &> /dev/null; then
   echo "Docker não encontrado. Instalando..."
   sudo sh get-docker.sh
   echo "Docker instalado com sucesso!"
 else
   echo "Docker já está instalado. Pulando a instalação."
 fi

AWS_ACCESS_KEY_ID=$(awk -F ' = ' '/aws_access_key_id/ {print $2}' ~/.aws/credentials)
AWS_SECRET_ACCESS_KEY=$(awk -F ' = ' '/aws_secret_access_key/ {print $2}' ~/.aws/credentials)
AWS_SESSION_TOKEN=$(awk -F ' = ' '/aws_session_token/ {print $2}' ~/.aws/credentials)

export AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY
export AWS_SESSION_TOKEN

 sudo docker build -t backend-image -f backend.dockerfile .
 sudo docker run -d --name backend-container \
           -e AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID" \
           -e AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY" \
           -e AWS_SESSION_TOKEN="$AWS_SESSION_TOKEN" \
           -e AWS_REGION="us-east-1" \
           -e AWS_BUCKET_NAME="$RAW_UNS_BUCKET_NAME" \
           -e SPRING_DATASOURCE_URL="jdbc:mysql://$PRIVATE_IP:3306/syntro" \
           -p 8080:8080 backend-image 

 sudo docker build -t website-image -f NF-deployment-website/install_website.dockerfile .
 sudo docker run --name website-container --network host -d -p 80:80 website-image


 git clone https://github.com/AskyuConsultoria/NF-deployment-etl.git
 sudo chmod +x NF-deployment-etl/run.sh
 sudo chmod +x NF-deployment-etl/scheduler.sh
 cp /home/ubuntu/.env ./NF-deployment-etl

 sudo docker build -t python-image -f NF-deployment-etl/python.dockerfile .
 sudo bash NF-deployment-etl/scheduler.sh 
EOF




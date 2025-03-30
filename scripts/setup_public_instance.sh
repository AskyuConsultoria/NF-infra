#!/bin/bash
git clone https://github.com/AskyuConsultoria/Gestio-deployment-website.git
git clone https://github.com/AskyuConsultoria/NFSiteWeb.git

sudo apt update -y
sudo apt upgrade -y

curl -fsSL https://get.docker.com -o get-docker.sh

sudo docker build -t backend-image -f ./Gestio-deployment-backend/backend.dockerfile .
sudo docker run --name backend-container --network host -d -p 8080:8080 backend-image 




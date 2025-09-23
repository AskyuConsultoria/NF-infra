PUBLIC_IP=$1
RAW_UNS_BUCKET_NAME=$2
RAW_ST_BUCKET_NAME=$3
TRUSTED_BUCKET_NAME=$4 



cat << EOF > default.conf
server { 
    listen 80;
    server_name $PUBLIC_IP;

    root /var/www/html/src;
    index index.html;

    location / {
        try_files \$uri \$uri/ /index.html;
    }

    location /syntro {
        proxy_pass http://localhost:8080/syntro;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOF


cat << EOF > backend.dockerfile
FROM eclipse-temurin:21-jdk

ENV TESSDATA_PREFIX=/usr/share/tesseract-ocr/5/tessdata

# Atualiza o sistema e instala o Tesseract com suporte ao português brasileiro
RUN apt-get update && \
    apt-get install -y \
    tesseract-ocr \
    tesseract-ocr-por \
    libtesseract-dev \
    libleptonica-dev \
    pkg-config && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


COPY ./syntro-deployment-backend/syntro-0.0.3.jar . 

CMD ["java", "-jar", "syntro-0.0.3.jar"]
EOF

cat << EOF > .env
raw_unstructured_bucket=$RAW_UNS_BUCKET_NAME
raw_structured_bucket=$RAW_ST_BUCKET_NAME
trusted_bucket=$TRUSTED_BUCKET_NAME
EOF
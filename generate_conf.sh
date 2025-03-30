PUBLIC_IP=$1


cat << EOF > default.conf
server { 
    listen 80;
    server_name $PUBLIC_IP;

    root /var/www/html/public;
    index index.html;

    location / {
        try_files \$uri \$uri/ /index.html;
    }

    location /nf {
        proxy_pass http://localhost:8080/nf;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOF



cat << EOF > backend.dockerfile
FROM eclipse-temurin:21-jdk-alpine

COPY ./NF-deployment-backend/nf-0.0.1.jar . 

CMD ["java", "-jar", "nf-0.0.1.jar"]
EOF

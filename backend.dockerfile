FROM eclipse-temurin:21-jdk

ENV TESSDATA_PREFIX=/usr/share/tesseract-ocr/5/tessdata

# Atualiza o sistema e instala o Tesseract com suporte ao português brasileiro
RUN apt-get update &&     apt-get install -y     tesseract-ocr     tesseract-ocr-por     libtesseract-dev     libleptonica-dev     pkg-config &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*


COPY ./syntro-deployment-backend/syntro-0.0.3.jar . 

CMD ["java", "-jar", "syntro-0.0.3.jar"]

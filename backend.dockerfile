FROM eclipse-temurin:21-jdk-alpine

COPY ./NF-deployment-backend/nf-0.0.3.jar . 

CMD ["java", "-jar", "nf-0.0.3.jar"]

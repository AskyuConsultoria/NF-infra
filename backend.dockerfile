FROM eclipse-temurin:21-jdk-alpine

COPY ./syntro-deployment-backend/syntro-0.0.3.jar . 

CMD ["java", "-jar", "syntro-0.0.3.jar"]

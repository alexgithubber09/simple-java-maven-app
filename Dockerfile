FROM openjdk:8u131-alpine

WORKDIR /app

COPY ./my-app-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]


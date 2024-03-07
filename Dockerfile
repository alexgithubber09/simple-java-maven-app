FROM openjdk:8u131-alpine

WORKDIR /app

COPY /var/lib/jenkins/workspace/java_project/target/my-app-1.0-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]


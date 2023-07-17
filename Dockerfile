FROM openjdk:11
COPY target/springboot-postgres-docker-assignment-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-","app.jar"]

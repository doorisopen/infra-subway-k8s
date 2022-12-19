FROM openjdk:8-jdk-alpine
ARG JAR_FILE=/build/libs/subway-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} subway-k8s.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=prod","-jar","/subway-k8s.jar"]

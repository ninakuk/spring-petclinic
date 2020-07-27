FROM openjdk:8-jdk-alpine

ARG JAR_FILE=spring-petclinic\src\main\java\org

COPY ${JAR_FILE} app.jar 

ENTRYPOINT ["java","-jar","/app.jar"]

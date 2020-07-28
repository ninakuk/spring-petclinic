FROM openjdk:8-jdk-alpine

ARG JAR_FILE=C:\Progra~2\Jenkins\workspace\PetClinic\target\spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

CMD ["java","-jar","/app.jar"]

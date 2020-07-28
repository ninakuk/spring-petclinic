FROM openjdk:8-jdk-alpine

ARG JAR_FILE=C:\Users\Public\spring-petclinic\target\spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

CMD ["java","-jar","/app.jar"]

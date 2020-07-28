FROM openjdk:8-jdk-alpine

COPY ["./target/*.jar", "./app.jar"]

CMD ["java","-jar","C:/Users/Nina Kukuljan/Desktop/spring-petclinic/app.jar"]
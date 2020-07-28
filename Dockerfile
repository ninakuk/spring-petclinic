FROM openjdk:8-jdk-alpine

COPY "C:\Progra~2\Jenkins\workspace\PetClinic\target\*.jar" "C:\Users\Nina Kukuljan\Desktop\spring-petclinic\app.jar"

CMD ["java","-jar","C:\Users\Nina Kukuljan\Desktop\spring-petclinic\app.jar"]
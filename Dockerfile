FROM maven:latest as builder
COPY . /tmp/src
WORKDIR /tmp/src
RUN mvn clean package
CMD [ "java", "-jar" , "target/hello-dropwizard-1.0-SNAPSHOT.jar" ,"server" ,"example.yaml"]


#FROM openjdk:8-jdk-alpine
#EXPOSE 8080-8081
#WORKDIR /app
#COPY --from=builder /tmp/src/example.yml .
#COPY --from=builder /tmp/src/target/dropwizard-sample-0.0.1-SNAPSHOT.jar .
#CMD ["java", "-jar", "dropwizard-sample-0.0.1-SNAPSHOT.jar", "server", "example.yml"]

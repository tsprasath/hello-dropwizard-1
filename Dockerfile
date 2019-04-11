FROM maven:3.5-jdk-8 as builder
COPY . /tmp/src
WORKDIR /tmp/src
RUN mvn package

FROM openjdk:8-jdk-alpine
EXPOSE 8080
WORKDIR /app
COPY --from=builder /tmp/src/example.yaml .
COPY --from=builder /tmp/src/target/hello-dropwizard-1.0-SNAPSHOT.jar .
CMD [ "java", "-jar" , "hello-dropwizard-1.0-SNAPSHOT.jar" ,"server" ,"example.yaml"]

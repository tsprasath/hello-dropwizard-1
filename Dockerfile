FROM maven:latest as builder
COPY . /tmp/src
WORKDIR /tmp/src
RUN mvn clean package
CMD ["java", "-jar", "dropwizard-sample-0.0.1-SNAPSHOT.jar", "server", "example.yaml"]

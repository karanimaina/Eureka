FROM maven:3.8.7-eclipse-temurin-11
WORKDIR /app
COPY pom.xml .
RUN mvn -B dependency:resolve-plugins dependency:resolve



FROM openjdk:17
WORKDIR /app
COPY target/*.jar app.jar
COPY application.yml application.yml
COPY application-uat.yml application-uat.yml
EXPOSE 9713
ENTRYPOINT java -XX:MinHeapFreeRatio=20 -XX:MaxHeapFreeRatio=40 -Djava.awt.headless=true -XX:+UseContainerSupport -jar app.jar

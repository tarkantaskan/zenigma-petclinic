FROM openjdk:17-jdk
WORKDIR /app
COPY target/myapp.jar app.jar

RUN apk add --no-cache tzdata
ENV TZ=Europe/Istanbul

ENV SPRING_APPLICATION_JSON='{"spring.profiles.active":"postgres"}'

ENTRYPOINT ["java", "-jar", "app.jar"]

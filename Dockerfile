FROM openjdk:17-jdk
WORKDIR /app
COPY target/*.jar app.jar

RUN apk add --no-cache tzdata
ENV TZ=Europe/Istanbul

ENV SPRING_PROFILES_ACTIVE=postgres

ENTRYPOINT ["java", "-jar", "app.jar"]

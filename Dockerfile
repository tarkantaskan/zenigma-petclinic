FROM openjdk:17-jdk
WORKDIR /app
COPY target/*.jar app.jar

RUN apt-get update && apt-get install -y tzdata
ENV TZ=Europe/Istanbul

ENV SPRING_PROFILES_ACTIVE=postgres

ENTRYPOINT ["java", "-jar", "app.jar"]

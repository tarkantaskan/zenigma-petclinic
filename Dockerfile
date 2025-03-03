FROM openjdk:17-jdk
WORKDIR /app
COPY target/*.jar app.jar

ENV SPRING_PROFILES_ACTIVE=postgres

ENTRYPOINT ["java", "-jar", "app.jar"]

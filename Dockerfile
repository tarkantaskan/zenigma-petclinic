# Use the official OpenJDK 17 image as the base image
FROM openjdk:17-jdk-alpine

RUN apk add --no-cache tzdata
ENV TZ=Europe/Istanbul

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/*.jar app.jar

# Set environment variables for PostgreSQL configuration
ENV POSTGRES_URL=jdbc:postgresql://192.168.111.138:5432/petclinic
ENV POSTGRES_USER=petclinic
ENV POSTGRES_PASS=petclinic

# Set the active profile to 'postgres'
ENV SPRING_PROFILES_ACTIVE=postgres

# Expose the port your application will run on (default is 8080)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

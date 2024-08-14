# Use a base image with Java 8
FROM openjdk:8-jdk-alpine

# Set the location of the application WAR file inside the container
ARG WAR_FILE=target/demo-0.0.1-SNAPSHOT.war

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file into the container
COPY ${WAR_FILE} app.war

# Expose the default port for Spring Boot (usually 8080)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.war"]

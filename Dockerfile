# Multi-stage build: first stage for building
FROM gradle:8.5-jdk11 AS build

# Set the working directory
WORKDIR /app

# Copy the Gradle wrapper and build files
COPY build.gradle ./
COPY src ./src

# Build the application
RUN gradle build --no-daemon

# Second stage: runtime
FROM eclipse-temurin:11-jre

# Set the working directory
WORKDIR /app

# Copy the JAR from the build stage
COPY --from=build /app/build/libs/*.jar app.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
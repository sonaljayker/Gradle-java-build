# Java Gradle Application

This is a simple Java application built with Gradle and containerized using Docker.

## Requirements

- Java JDK 11 or higher (for local development)
- Gradle (for local builds - download from https://gradle.org/install/)
- Docker (for containerization and building)

## Building the Application Locally

1. Install Gradle if not already installed.

2. Build the application using Gradle:

   ```
   gradle build
   ```

3. Run the application locally:
   ```
   gradle run
   ```

## Containerizing the Application

The Dockerfile uses a multi-stage build that includes Gradle, so no local Gradle installation is required for containerization.

1. Build the Docker image:

   ```
   docker build -t java-gradle-app .
   ```

2. Run the Docker container:

   ```
   docker run java-gradle-app
   ```

3. Run the Docker container:
   ```
   docker run java-gradle-app
   ```

## Troubleshooting

- Ensure Java and Gradle are installed and in your PATH.
- For Docker, make sure Docker Desktop is running on Windows.

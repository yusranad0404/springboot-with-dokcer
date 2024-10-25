# First stage: Build the application using a Maven image
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app

# Copy the pom.xml file and install dependencies
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy the source code and build the application
COPY src ./src
RUN mvn clean install -DskipTests

# Second stage: Use a lightweight JRE image to run the application
FROM openjdk:17-slim
WORKDIR /app

# Copy the built JAR file from the first stage
COPY --from=build /app/target/hello-world-0.0.1-SNAPSHOT.jar /app/hello-world.jar

# Define the entry point to run the application
ENTRYPOINT ["java", "-jar", "/app/hello-world.jar"]
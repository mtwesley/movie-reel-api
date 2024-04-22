# Maven build
FROM maven:3.6.3-jdk-11 as builder

# Copy the project files to the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run maven package to build the JAR file
RUN mvn clean package

# Setup the runtime container
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy only the built JAR from the builder stage
COPY --from=builder /app/target/final-capstone-starter-1.0.jar /app/final-capstone.jar

# Make port 9000 available to the world outside this container
EXPOSE 9000

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/final-capstone.jar"]
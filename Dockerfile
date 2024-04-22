# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from your target directory to the working directory in the container
COPY ./target/final-capstone-starter-1.0.jar /app/final-capstone.jar

# Make port 9000 available to the world outside this container
EXPOSE 9000

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/final-capstone.jar"]

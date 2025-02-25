# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build artifact (JAR file) into the container at /app
# (Assuming you’ve already built your project with Maven and have a .jar file)
COPY target/*.jar /app/myapp.jar

# Expose the port the app runs on (e.g., 8080 for a web app)
EXPOSE 8080

# Command to run the Java application
CMD ["java", "-jar", "/app/myapp.jar"]

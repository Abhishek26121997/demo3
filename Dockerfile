# Use an official Java runtime as a base image
FROM openjdk:17

# Set the working directory inside the container
WORKDIR /app

# Copy the Java program (assuming the compiled .jar file) into the container
COPY /app .

# Expose the port the app will run on (optional, change if necessary)
RUN javac hello.java

# Command to run the application
CMD ["java", "hello"]

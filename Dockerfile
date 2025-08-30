# Use the official Dart image as a base
FROM dart:stable AS build

# Set the working directory
WORKDIR /app

# Copy the pubspec files and resolve dependencies
COPY pubspec.* ./
RUN dart pub get

# Copy the rest of the application code
COPY . .

# Build the application
RUN dart pub get --offline && dart compile exe bin/server.dart -o bin/server

# Use a minimal base image for the runtime
FROM debian:bullseye-slim

# Set the working directory
WORKDIR /app

# Copy the compiled server binary from the build stage
COPY --from=build /app/bin/server /app/server

# Expose the port the server will run on
EXPOSE 8085

# Command to run the server
CMD ["/app/server"]
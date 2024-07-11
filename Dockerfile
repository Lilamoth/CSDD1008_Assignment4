# Use golang:1.22 as a parent image
FROM golang:1.22

# Set the working directory in the container
WORKDIR /app

# Copy application to the working directory
COPY . .

# build
RUN go build -o main .

# Expose port 3001 to the outside world
EXPOSE 3001

# Command to run the application
CMD ["./main"]

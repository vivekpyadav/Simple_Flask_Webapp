# Using official Python image as base
FROM python:latest

# Set working directory inside container
WORKDIR /app

# To Copy the current directory contents
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Exposing the port
EXPOSE 5000

# Command to run the application
CMD ["python3", "app.py"]


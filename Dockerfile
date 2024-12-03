# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies (here we're assuming a requirements.txt exists)
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the application
CMD ["python", "hello.py"]

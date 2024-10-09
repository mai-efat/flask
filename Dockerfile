# Use the official Python base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
# Copy the current directory contents into the container at /app
COPY . /app


# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir Flask

# Expose port 5000 for the Flask app
EXPOSE 5000

# Define the command to run the Flask app
CMD ["python", "web.py"]

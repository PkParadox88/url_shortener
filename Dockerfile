# Use an official Python runtime as a parent image
FROM python:3.9

# Set environment variables for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Python dependencies
RUN echo "Installing Python dependencies..."
RUN python3.9 -m pip install -r requirements.txt

# Collect static files
RUN python3.9 manage.py collectstatic --noinput --clear

# Expose the ports your app may run on (e.g., 8000 for Django and 8888 for Huey)
EXPOSE 8000 8888

# Define the command to run your application and Huey
CMD ["bash", "start.sh"]

RUN echo "Running application..."

# Start from a lightweight Linux image that already has Python 3.11 installed
FROM python:3.11-slim

# Set the working directory inside the container to /app
# All commands after this will run inside this folder
WORKDIR /app

# Copy the app.py file from your local machine into the /app folder in the container
COPY app.py .

# When the container starts, run "python app.py"
CMD ["python", "app.py"]


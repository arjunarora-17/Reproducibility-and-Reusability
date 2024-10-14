FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /workspace

# Copy the current directory contents into the container at /workspace
COPY . .

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev

# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirement.txt

# Expose port 80 for the application
# EXPOSE 80

# Set environment variable
ENV NAME MLOpsLab

# Command to run the application
CMD ["python", "script.py"]

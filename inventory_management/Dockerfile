# Your Solution

# Use official python base image
FROM python:3.10-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory in the container
WORKDIR /app

# Copy requirements.txt to the container
COPY requirements.txt /app/

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code for the inventory_management microservice
COPY app /app/inventory_management/app

# Expected Exposed port 5052
EXPOSE 5052

# Set the entry point for the inventory_management application
# Use uvicorn to run FASTAPI application
CMD ["uvicorn", "inventory_management.app.main:app", "--host", "0.0.0.0", "--port", "5052"]
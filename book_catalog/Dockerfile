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

# Copy the application code for the book_catalog microservice
COPY app /app/book_catalog/app

# Expected exposed port 5051
EXPOSE 5051

# Set the entry point for the book_catalog application
# Use uvicorn to run FASTAPI application
CMD ["uvicorn", "book_catalog.app.main:app", "--host", "0.0.0.0", "--port", "5051"]
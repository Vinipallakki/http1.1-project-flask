# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy files
COPY requirements.txt requirements.txt
COPY app.py app.py

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 8080

# Start the server
CMD ["python", "app.py"]

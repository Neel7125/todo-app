# Use official lightweight Python image
FROM python:3.9-slim

# Set working directory in container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project
COPY . .

# Expose port (Flask default 5000)
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

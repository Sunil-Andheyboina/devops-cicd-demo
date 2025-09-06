# Use the official Python base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy requirement file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the code
COPY . .

# Expose the port Flask runs on
EXPOSE 5000

# Command to run the application
CMD ["python", "app/app.py"]

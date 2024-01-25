# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the order-service directory contents into the container at /app
# Adjust the path as needed to point to the correct directory where your application code and requirements.txt are located
COPY ./books-service/order-service /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable for further customization (optional)
ENV NAME OrderService

# Run the application when the container launches
# Note: Update "main.py" to your application's entry point file
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

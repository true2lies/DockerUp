# Python-alpine image as the base image
FROM python:3.11.9-alpine3.19

# working directory to /app
WORKDIR /app

# Copy the application code into the container
COPY . .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Expose the port that the Flask app will run on
EXPOSE 5000

# Start the Flask app
CMD ["flask", "run", "--host=0.0.0.0"]

FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy all necessary files into the container
COPY app.py requirements.txt /app/
COPY model /app/model

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask API port
EXPOSE 5000

# Command to run the Flask app
CMD ["python", "app.py"]
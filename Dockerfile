# Use a base image with Python 3.8
FROM python:3.8-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install the necessary dependencies
RUN apt-get update && \
    apt-get install -y default-jre unzip && \
    rm -rf /var/lib/apt/lists/*

# Install the Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application files
COPY . .

# Set environment variables
ENV TRIMMOMATIC_JAR_PATH '/home/amrgalal/Trimmomatic/trimmomatic-0.39.jar'
ENV REFERENCE_BANK_PATH '/home/amrgalal/Desktop/Teste_Amr/database/fasta_file.fasta'

# Run the command to start the application
CMD ["python", "main.py"]


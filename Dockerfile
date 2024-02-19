# Basic image of the container
FROM python:3.10-slim

# Set the environment variable
ENV APP_HOME /app

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available from outside this container
EXPOSE 5000

# Define environment variable
ENV NAME PersonalAssistant

# Run main.py when the container launches
ENTRYPOINT ["python", "src/main.py"]
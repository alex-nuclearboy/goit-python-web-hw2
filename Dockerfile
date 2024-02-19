FROM python:3.10

# Set the environment variable
ENV APP_HOME /app

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
ENV NAME PersonalAssistant

# Run app.py when the container launches
CMD ["python", "src/main.py"]

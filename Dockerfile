# Get official miniconda3 as a parent image
FROM jupyter/datascience-notebook

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN conda env create -f MLdemo_condaEnv.yml

# Make port 80 available to the world outside this container
EXPOSE 8888

# Define environment variable
ENV NAME MLdemo

# Run app.py when the container launches    
CMD source /app/init.sh
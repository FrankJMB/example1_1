# Use an official Node runtime as a parent image
FROM node:6-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
RUN mkdir /home/ttt
COPY . /home/ttt

# Install any needed packages specified in package.json
RUN cd /home/ttt && npm install

# Make port 80 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV NAME World

# Run app when the container launches
CMD cd /home/ttt && npm start
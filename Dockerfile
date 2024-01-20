# Use an official Node.js runtime as a base image
FROM node:21.6

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port on which your app runs
EXPOSE 3000

# Specify the command to run on container startup
CMD ["node", "index.js"]

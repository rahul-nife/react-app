# Use an official Node runtime as a base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install npm dependencies
RUN npm install

# Copy the entire project directory to the working directory
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run when starting the container
CMD ["npm", "run", "start"]

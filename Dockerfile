# Use an official Node.js image as the base
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build your application
RUN npm run build:client || true

# Expose a port (if your application requires it)
EXPOSE 3000

# Command to run your application
CMD [ "npm", "run", "start:server" ]
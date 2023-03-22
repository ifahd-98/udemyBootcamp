# Use an appropriate base image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /UdemyBootCamp

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy the remaining project files to the working directory
COPY . .

# Expose port 80
EXPOSE 80

# Start the web server
CMD ["npm", "start"]

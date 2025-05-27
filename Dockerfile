# Use official Node.js image
FROM node:22-slim

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port
EXPOSE 8080

# Run the app
CMD ["npm", "start"]

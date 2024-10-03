# Stage 1: Build Stage
FROM node:18.17.0-alpine AS base

# Set working directory
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json /app/ 
RUN npm install 

# Copy all files to the image
COPY . /app/

# Expose port
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]
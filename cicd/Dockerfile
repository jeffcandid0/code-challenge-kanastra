# Use a node base image
FROM node:14 AS builder

# Set working directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy application code
COPY . .

# Run tests
RUN npm test

# Create a production image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy dependencies and application code from builder stage
COPY --from=builder /usr/src/app /usr/src/app

# Expose port and run application
EXPOSE 3000
CMD ["node", "app.js"]


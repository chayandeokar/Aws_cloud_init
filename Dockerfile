# Use a base image with your application's runtime (e.g., Node.js, Python, etc.)
FROM node:14

# Set the working directory within the container
WORKDIR /app

# Copy your application code into the container
COPY . .

# Install application dependencies
RUN npm install

# Expose a port (if your application listens on a specific port)
EXPOSE 3000

# Define the command to start your application
CMD ["node", "app.js"]

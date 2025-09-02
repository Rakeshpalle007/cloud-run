# Use Node.js base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Start the app
CMD ["node", "server.js"]

# Cloud Run expects the app to listen on PORT
ENV PORT=8080
EXPOSE 8080

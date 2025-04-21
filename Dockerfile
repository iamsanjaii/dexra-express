# Use the official Node.js image.
FROM node:18-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Bind to port 8080
ENV PORT 8080
EXPOSE 8080

# Start the server
CMD [ "npm", "start" ]

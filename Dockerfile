# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json* ./
RUN npm install

# Copy all project files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]

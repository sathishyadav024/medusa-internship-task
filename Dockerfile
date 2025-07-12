# Use Node 18
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the code
COPY . .

# Build the Medusa backend (transpile TypeScript if needed)
RUN npm run build

# Run database migrations
RUN npx medusa migrations run

# Expose Medusa's default port
EXPOSE 9000

# Start the Medusa backend
CMD ["npm", "run", "start"]

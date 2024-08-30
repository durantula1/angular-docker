# Step 1: Use an official Node.js image to build the Angular app
FROM node:latest
# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install the Angular CLI globally
RUN npm install -g @angular/cli

# Install the dependencies
RUN npm install

# Copy the Angular app source code
COPY . .

# Open port 4200 for the Angular app
EXPOSE 4200

# Run the Angular app using ng serve
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]


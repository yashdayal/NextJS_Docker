# Start your image with a node base image
FROM node:22-alpine

# The /app directory should act as the main application directory
WORKDIR /myApp

# Copy the app package and package-lock.json file
COPY package*.json ./

# Copy local directories to the current local directory of our docker image (/app)
COPY ./app ./app
#COPY ./public ./public

# Install node packages, install serve, build the app, and remove dependencies at the end
RUN npm install
EXPOSE 3000

# Start the nextjs app
CMD [ "npm", "run", "dev" ]
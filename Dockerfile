# Specify a base image
FROM node:alpine

# Specify working directory
WORKDIR /usr/app
# Install some dependencies
COPY ./package.json ./
RUN npm install

# Change other configuration file and use caching
COPY ./ ./

# Default command
CMD ["npm", "start"]
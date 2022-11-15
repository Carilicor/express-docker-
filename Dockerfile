# Start from Alpine Linux with node 16 installed ...
FROM node:16-alpine3.15

#  Create a working directory and copy all files (except those in .dockerignore)
WORKDIR /src/
COPY . .

# Install our dependencies 
RUN npm install

# Set enviromental variables 
ENV PORT=3000

#  Open up Port 
EXPOSE 3000

# This is command to run whenever start a new container 
CMD [ "npm", "start" ]


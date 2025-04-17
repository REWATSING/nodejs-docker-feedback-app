FROM node:14

# Create app directory
WORKDIR /myjsapp

# Install app dependencies
COPY package.json /myjsapp
RUN npm install

# Copy app source code
COPY . /myjsapp

# Optional: define a mountable volume
# VOLUME [ "/myjsapp/data" ]

# App binds to port 80
EXPOSE 80

# Start the app with node commnad , will add script later for "npm"
CMD ["node", "server.js"]
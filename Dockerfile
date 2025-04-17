FROM node:14

# Create app directory
WORKDIR /myjsapp

# Install app dependencies
COPY package.json /myjsapp
RUN npm install
RUN npm install -g nodemon

# Copy app source code
COPY . /myjsapp

# Optional: define a mountable volume

#VOLUME [ "/myjsapp/node_modules" ]

# App binds to port 80
EXPOSE 80

# Start the app in dev
CMD [ "npm", "run", "dev" ]

# Start the app in prod
#CMD ["npm", "run" "start"]
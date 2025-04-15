FROM node:14

WORKDIR /myjsapp 

COPY package.json /myjsapp

RUN npm install

COPY . /myjsapp

EXPOSE 80

#VOLUME [ "/myjsapp/data"]

CMD [ "node", "server.js" ]
FROM node:alpine

COPY . /app

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "node", "app.js" ]

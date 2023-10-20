
#build stage
FROM node:18.16.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

CMD ["nest" , "start" ,"--watch" , "app.js"]
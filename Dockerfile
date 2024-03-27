FROM node:18.7.0

WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN rm -rf node_modules && npm install

RUN npm run build:client

# if production then use only=production

EXPOSE 3009

CMD [ "npm", "run", "start:server" ]
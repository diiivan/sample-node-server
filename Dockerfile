FROM node:17-alpine3.12

WORKDIR /usr/src/sample-node-server
COPY package*.json ./
RUN npm ci
COPY . .
EXPOSE 8080
CMD [ "node", "index.js" ]

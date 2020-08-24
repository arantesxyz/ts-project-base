FROM node:12-alpine

WORKDIR /app

COPY package*.json ./
COPY yarn.lock ./

RUN yarn --production

COPY dist/ .

CMD [ "node", "index.js" ]
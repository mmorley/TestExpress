FROM node:current-alpine

LABEL org.opencontainers.image.title = "Morley Learning Docker"

RUN mkdir /-p /user/src/app

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN npm install

ENTRYPOINT [ "node", "app.js"]


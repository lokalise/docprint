FROM node:9

MAINTAINER Nick Ustinov <nickustinov@gmail.com>

RUN mkdir -p /docprint

COPY bin /docprint/bin
COPY src /docprint/src
COPY index.js /docprint/index.js
COPY package.json /docprint/package.json

RUN touch /var/log/node.log ;\
    touch /docprint/npm-debug.log ;\
    cd /docprint/ ;\
    npm install

FROM node:alpine

MAINTAINER Shwetank Vashishtha <vashishthashwetank@gmail.com>

RUN apk add --no-cache git && \
    apk add --no-cache openssh
WORKDIR /data
RUN git clone https://github.com/ShwetankVashishtha/chat-bot-automation.git /data/app
WORKDIR /data/app
RUN npm install --ignore-scripts -g botium-bindings && \
    botium-bindings init mocha && \
    npm install && npm run mocha

## Note: A hook is applied on Docker Hub against GitHub which triggers each time repo receives commit.

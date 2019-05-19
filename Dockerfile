FROM node:alpine

MAINTAINER Shwetank Vashishtha <vashishthashwetank@gmail.com>

RUN apk add --no-cache git
RUN apk add --no-cache openssh
WORKDIR /data
RUN git clone https://github.com/ShwetankVashishtha/chat-bot-automation.git /data/app
CMD ["echo", "Cloning GIT repository in /data/app directory"]
WORKDIR /data/app
RUN npm install --ignore-scripts -g botium-bindings
CMD ["echo", "Initialising mocha"]
RUN botium-bindings init mocha
CMD ["echo", "Run MOCHA tests"]
RUN npm install && npm run mocha

## Note: A hook is applied on Docker Hub against Dockerfile which triggers each time Dockerfile receives commit.

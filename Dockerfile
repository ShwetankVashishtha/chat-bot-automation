FROM node:alpine
RUN apk add --no-cache git
RUN apk add --no-cache openssh
WORKDIR /data
RUN git clone https://github.com/ShwetankVashishtha/chat-bot-automation.git /data/app
WORKDIR /data/app
USER root
RUN npm install --ignore-scripts -g botium-bindings
RUN botium-bindings init mocha
RUN npm install && npm run mocha

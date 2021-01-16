# Introduction

Automate tests for Bots build upon Artificial Intelligence and Machine Learning algorithms.

Project leverages open source and freely distributed <a href='https://github.com/codeforequity-at/botium-core'>Botium</a> libraries to develop scripts.

<b>Botium Wiki</b>

https://botium.atlassian.net/wiki/spaces/BOTIUM/overview

# Execute from Docker Container
<b>Description</b><br>
Dockerfile located at project root directory contains Node:alpine OS Image to build tests automatically on alpine linux image inside container. 

<b>Build docker image from Dockerfile</b><br>
From project's root directory, execute command to build an image:<br>
docker build -t shwetankvashishtha/chat-bot-automation:chat-bot-automation .

Alternatively, You can pull pre-built docker image from project repository hosted on docker hub: https://hub.docker.com/r/shwetankvashishtha/chat-bot-automation

<b>Start docker container from image</b><br>
docker run -it shwetankvashishtha/chat-bot-automation:chat-bot-automation /bin/ash

<b>Install botium-bindings and mocha globally</b><br>
npm install -g botium-bindings && npm install -g mocha<br>

<b>Extend Mocha specs with the Botium test runner</b><br>
botium-bindings init mocha<br>

<b>Execute specs from project root directory</b><br>
npm install && npm run mocha

# Execute from Docker Compose
docker-compose up -d
  
<b>Description</b><br>
Automated scripts are executable as part of one of the services defined in yml file.<br>
docker-compose.yml file comprises of couple of services, executable in an isolated containerized env

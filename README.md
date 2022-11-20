# Introduction

Automate tests for Bots build upon Artificial Intelligence and Machine Learning algorithms.

Project leverages open source and freely distributed <a href='https://github.com/codeforequity-at/botium-core'>Botium</a> libraries to develop scripts.

<b>Botium Wiki</b>

https://botium-docs.readthedocs.io/en/latest/02_introduction/01_introduction.html

There are two ways to execute automated tests:
  * Execute from docker container
  * Execute using docker compose

# Execute from docker container
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

# Execute using docker compose
docker-compose up -d
  
<b>Description</b><br>
docker-compose.yml file comprises of couple of services, executable in an isolated containerized environment.

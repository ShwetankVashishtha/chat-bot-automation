# Introduction

Automate tests for Bots build upon Artificial Intelligence and Machine Learning algorithms.

Project leverages open source and freely distributed <a href='https://github.com/codeforequity-at/botium-core'>Botium</a> libraries to develop scripts. 

<b>Botium Wiki</b>

https://botium.atlassian.net/wiki/spaces/BOTIUM/overview

# Execute from Docker Container
cd .. && docker build chat-bot-automation

<b>Description</b><br>
Dockerfile located at project root directory contains Node:alpine OS Image to build tests automatically on alpine linux image inside container. Docker hub repository: https://cloud.docker.com/repository/docker/shwetankvashishtha/chat-bot-automation 

# Execute (Usage)
<b>Install botium-bindings and mocha globally</b><br>
npm install -g botium-bindings && npm install -g mocha<br>

<b>Extend Mocha specs with the Botium test runner</b><br>
botium-bindings init mocha<br>

<b>Execute specs from project root directory</b><br>
npm install && npm run mocha

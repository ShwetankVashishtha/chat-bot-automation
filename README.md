# Introduction

Automate tests for Bots build upon Artificial Intelligence and Machine Learning algorithms.

Project leverages open source and freely distributed <a href='https://github.com/codeforequity-at/botium-core'>Botium</a> libraries to develop scripts.

# Botium Wiki

https://botium.atlassian.net/wiki/spaces/BOTIUM/overview

# Usage
<b>Install botium-bindings globally</b><br>
npm install -g botium-bindings<br>

<b>Extend Mocha specs with the Botium test runner</b><br>
botium-bindings init mocha<br>

<b>Execute specs from project root directory</b><br>
npm install && npm run mocha

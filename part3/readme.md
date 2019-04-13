# Part3
## How to develop
 - backend 
    1. `cd back-end && npm i`
    2. `cd npm start`
 - front-end 
    1. `cd front-end && npm i`
    2. `npm start`
 ## How to deploy
 1. `cd && devOps`
 2. `./deploy <username> front|back`
 
 Example: 
 `./deploy.sh bn.barak front` will deploy the front-end by Barak
 `./deploy.sh emily.cassell front` will deploy the back-end for by Emily
 
 the username is because of the different ssh access.
 
 # Debug
 `sudo journalctl -u backend.service`
#!/usr/bin/env bash
username=$1
sshToServer=${username}@35.196.237.72

frontEnd() {
    cd ../front-end && npm run build
    scp -r ../front-end/build ${sshToServer}:/home/${username}/front-end
    ssh -t ${sshToServer} "sudo cp -r /home/${username}/front-end/* /usr/share/nginx/html"
}

backEnd() {
    cd ../back-end && npm run build
   scp -r ../back-end/build/app.js ${sshToServer}:/home/${username}/app.js
   ssh -t ${sshToServer} "sudo cp -r /home/${username}/app.js /usr/share/nginx/app.js"
   ssh -t ${sshToServer} "sudo systemctl restart backend"
}

if [ "$2" == "front" ]
then
    echo "Deploy Front End"
     frontEnd
elif [ "$2" == "back" ]
then
    echo "Deploy Back End"
    backEnd
else
    echo "Usage: deploy.sh front|end"
fi
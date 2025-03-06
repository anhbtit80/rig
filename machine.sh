#!/bin/sh
#This script isn't Advanced 
#Author Anaz

#making ngrok directory 
mkdir ngrok

#changing directory to ngrok
cd ngrok

#removing all existing files 
rm * 

#removing all existing folders 
rm -r *

curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
	| sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
	&& echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
	| sudo tee /etc/apt/sources.list.d/ngrok.list \
	&& sudo apt update \
	&& sudo apt install ngrok

#asking ngrok auth token
echo " Go to ngrok.io in any browser & signin or signup, copy the ngrok auth token and paste here, ngrok token only, Readme - https://github.com/developeranaz/cloudshell-novnc-automation   Ngrok Auth token: "
read input_token
echo "You entered: $input_token"
./ngrok authtoken $input_token

#orgin-repository : https://github.com/developeranaz/cloudshell-novnc-automation

#updating system
sudo apt update -y

#installing screen
sudo apt-get install screen -y

#Activating screen
#pushing docker ubuntu desktop using screen (you can change resolution from below code) 
screen -d -m docker run -p 8080:80 -e RESOLUTION=1920x1080 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

./ngrok http 8080

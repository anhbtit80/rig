#!/bin/sh
#This script isn't Advanced 
#Author Anaz

curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
	| sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
	&& echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
	| sudo tee /etc/apt/sources.list.d/ngrok.list \
	&& sudo apt update \
	&& sudo apt install ngrok

#asking ngrok auth token

ngrok authtoken 22b8lmaOjoNz75rVr5GQSBnXSfX_4zXe75MrZJb1XbbQkNAFj

#updating system
sudo apt update -y

#installing screen
sudo apt-get install screen -y

#Activating screen
#pushing docker ubuntu desktop using screen (you can change resolution from below code) 
screen -d -m docker run -p 8080:80 -e RESOLUTION=1920x1080 -v /dev/shm:/dev/shm dorowu/ubuntu-desktop-lxde-vnc

ngrok http 8080

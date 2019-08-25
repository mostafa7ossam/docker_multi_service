#!/bin/bash 

sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 8000
sudo ufw allow ssh

sudo ufw --force enable

echo "firewall settings updated and firewall enabled"

sudo docker-compose up -d

echo "Solution Started"

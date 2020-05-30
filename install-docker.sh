#!/bin/sh

sleep 30
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update -y
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
# sudo apt-get install -y docker-py
echo "Docker installed..."
sudo usermod -aG docker ubuntu
sudo systemctl enable docker
sudo systemctl start docker

echo "#########################################"

echo "##################### install docker-compose ########################"
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "docker-compose installed..."

echo "########################################"
echo "########################################"

echo "#################### install docker-machine #########################"
curl -L https://github.com/docker/machine/releases/download/v0.12.2/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine
chmod +x /tmp/docker-machine
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine
echo "docker-machine installed..."

# sudo apt update -y
# sudo apt install software-properties-common -y
# sudo add-apt-repository ppa:deadsnakes/ppa -y
# sudo apt install python3.8 -y
# python3.8 --version
# echo "installed python3.8..."

# sudo apt install python2.7 -y
# python2.7 --version
# echo "installed python..."

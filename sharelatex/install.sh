#! /bin/sh


#vagrant init precise32
#vagrant up
#vagrant ssh
echo "######################################################################"
echo "UPDATE"
echo "######################################################################"
sudo apt-get update
echo "######################################################################"
echo "GIT AND STUFF"
echo "######################################################################"
sudo apt-get install git-core curl build-essential openssl libssl-dev
echo "######################################################################"
echo "NODEJS"
echo "######################################################################"
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install nodejs
echo "######################################################################"
echo "npm"
echo "######################################################################"
sudo apt-get install npm

echo "######################################################################"
echo "LATEX"
echo "######################################################################"
sudo apt-get install texlive

echo "######################################################################"
echo "Redis"
echo "######################################################################"
sudo apt-get install redis-server

echo "######################################################################"
echo "Mongo"
echo "######################################################################"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update

echo "######################################################################"
echo "share latex"
echo "######################################################################"



git clone https://github.com/sharelatex/sharelatex.git
cd sharelatex



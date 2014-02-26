#! /bin/sh

# Apache License
# Gregor von Laszewski, laszewski@gmail.com 

#
# Shell script for experimental vagrant setup please help improving it
#

BANNER () {
    echo "######################################################################"
    echo $1
    echo "######################################################################"
}

#vagrant init precise32
#vagrant up
#vagrant ssh



BANNER "UPDATE"

sudo apt-get update

BANNER "GIT AND STUFF"

sudo apt-get -y install git-core curl build-essential openssl libssl-dev

BANNER "NODEJS"

sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get -y update
sudo apt-get -y install nodejs


#BANNER "npm"
#sudo apt-get install -y npm

BANNER "LATEX and LATEXMK"

sudo apt-get install -y texlive

# this version of latexmk is too old
sudo apt-get install -y latexmk

# installing a newer version
mkdir ~/bin 
curl http://mirror.physik-pool.tu-berlin.de/tex-archive/support/latexmk/latexmk.pl > ~/bin/latexmk
chmod a+x ~/bin/latexmk
export PATH=~/bin:$PATH


BANNER "REDIS"

#sudo apt-get install -y redis-server

mkdir /tmp/b
cd /tmp/b
wget http://redis.googlecode.com/files/redis-2.6.9.tar.gz
tar -zxf redis-2.6.9.tar.gz
cd redis-2.6.9
make
sudo make install
wget https://github.com/ijonas/dotfiles/raw/master/etc/init.d/redis-server
wget https://github.com/ijonas/dotfiles/raw/master/etc/redis.conf
sudo mv redis-server /etc/init.d/redis-server
sudo chmod +x /etc/init.d/redis-server
sudo mv redis.conf /etc/redis.conf
sudo mkdir -p /var/lib/redis
sudo mkdir -p /var/log/redis
sudo useradd --system --home-dir /var/lib/redis redis
sudo chown redis.redis /var/lib/redis
sudo chown redis.redis /var/log/redis
sudo update-rc.d redis-server defaults
sudo /etc/init.d/redis-server start

BANNER "MONGO"

sudo apt-key -y  adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get -y  update
sudo apt-get -y --force-yes install mongodb-10gen


BANNER "GRUNT-CLI"
sudo npm install -g grunt-cli

BANNER "EMACS"
sudo apt-get -y install emacs23

BANNER "SHARE LATEX"

git clone https://github.com/sharelatex/sharelatex.git
cd sharelatex

cp /vagrant_data/setttings.development.coffee sharelatex/config/settings.development.coffee

npm install
grunt install


grunt check --force

grunt run



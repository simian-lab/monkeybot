#!/usr/bin/env bash

# Fix pesky locale issues
touch /etc/default/locale
echo 'LC_ALL="en_US.UTF-8"' | sudo tee /etc/default/locale

# Let's add the latest version of node to the repos
add-apt-repository -y ppa:chris-lea/node.js

# Make sure that the repos are updated before installing
apt-get update

# Get Node. This'll get npm as well
apt-get install nodejs -y

# Make sure we got git.
apt-get install git -y

# Get the required stuff
npm install -g hubot coffee-script

# Get heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

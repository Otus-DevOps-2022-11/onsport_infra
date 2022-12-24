#!/bin/bash
# Add keys ando MongoDB repo
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
# APT update
sudo apt-get update
#MongoDB install and start+enable
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod

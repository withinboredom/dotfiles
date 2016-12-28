#!/bin/bash

set -e
set -v

sudo apt update
sudo apt -y upgrade

sudo apt install -y \
	curl wget gnupg2 python-pip python3-pip terminator zsh build-essential jq

curl -sL https://deb.nodesource.com/setup_7.x | sudo bash -

sudo apt upgrade -y
sudo apt install -y nodejs

sudo npm install -g npm yarn

curl -sL https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-add-repository ppa:git-core/ppa

sudo apt-get install git-lfs git

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt update
sudo apt upgrade -y

curl -s https://raw.githubusercontent.com/ZZROTDesign/docker-clean/v2.0.4/docker-clean |
sudo tee /usr/local/bin/docker-clean > /dev/null && \
sudo chmod +x /usr/local/bin/docker-clean

set +e

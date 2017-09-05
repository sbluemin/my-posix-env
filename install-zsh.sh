#!/bin/bash

sudo apt install zsh

wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -P /tmp/

sudo sh /tmp/install.sh

sudo chsh -s `which zsh`

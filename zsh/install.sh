#!/bin/bash

sudo apt install -y zsh
chsh -s /bin/zsh
# install
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# zshrc config
patch ~/.zshrc ./zshrc.diff
rm -rf ~/.zshrc.*

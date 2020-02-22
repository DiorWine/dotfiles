#!/bin/bash

# install
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# zshrc config
patch ~/.zshrc ./zshrc.diff
rm -rf ~/.zshrc.*

#!/bin/bash

vim_PATH=$(pwd)

git clone https://github.com/chxuan/vimplus.git ~/.vimplus
cd ~/.vimplus
./install.sh

if [ -d ~/.vim/plugged/indentLine ]; then
else
    git clone https://github.com/Yggdroot/indentLine.git ~/.vim/plugged/
fi


cd ~/.vimplus/colors
ln -s $vim_PATH/solarized.vim .

rm -rf ~/.vimrc.custom.*
cd ~/
ln -s $vim_PATH/custom.config  ./.vimrc.custom.config
ln -s $vim_PATH/custom.plugins ./.vimrc.custom.plugins

#!/bin/bash

DOT_PATH=$(pwd)
i3_PATH=$DOT_PATH/i3/
compton_PATH=$DOT_PATH/compton/
picom_PATH=$DOT_PATH/picom/
rofi_PATH=$DOT_PATH/rofi/
dunst_PATH=$DOT_PATH/dunst/


# rm -rf ~/.config/compton.conf
# cd ~/.config/
# ln -s $compton_PATH/compton.conf .

rm -rf ~/.config/picom.conf
cd ~/.config/
ln -s $picom_PATH/picom.conf .

rm -rf ~/.config/rofi
cd ~/.config/
ln -s $rofi_PATH .

rm -rf ~/.config/dunst
cd ~/.config/
ln -s $dunst_PATH .

rm -rf ~/.config/i3
cd ~/.config
ln -s $i3_PATH .

#!/bin/bash

DOT_PATH=$(pwd)
i3_PATH=$DOT_PATH/i3/
compton_PATH=$DOT_PATH/compton/
rofi_PATH=$DOT_PATH/rofi/


rm -rf ~/.config/compton.conf
cd ~/.config/
ln -s $compton_PATH/compton.conf .

rm -rf ~/.config/rofi/*
cd ~/.config/rofi/
ln -s $rofi_PATH/* .

rm -rf ~/.config/i3/*
cd ~/.config/i3/
ln -s $i3_PATH/* .

#!/bin/bash

# 系统安装则在/usr/share/fonts/里安装
# ttf 在 /usr/share/fonts/truetype/
# otf 在 /usr/share/fonts/opentype/

mkdir -p ~/.local/share/fonts

mkdir -p ~/.local/share/fonts/SauceCode
mkdir -p ~/.local/share/fonts/wps

unzip ./SourceCodePro.zip -d ~/.local/share/fonts/SauceCode/
unzip ./wps_symbol_fonts.zip -d ~/.local/share/fonts/wps/

fc-cache -vf ~/.local/share/fonts/SauceCode
fc-cache -vf ~/.local/share/fonts/wps

#!/bin/bash

# From:
# https://github.com/wszqkzqk/deepin-wine-ubuntu/releases

unzip ~/package/deepin-wine-ubuntu-2.18-12-3.zip
cd ~/package/deepin-wine-ubuntu-2.18-12-3/
sudo sh ~/package/deepin-wine-ubuntu-2.18-12-3/install.sh

sudo dpkg -i ~/package/deepin.com.qq.office_2.0.0deepin4_i386.deb

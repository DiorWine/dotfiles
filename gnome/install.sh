#!/bin/bash

sudo apt install -y gnome-tweaks
sudo apt install -y chrome-gnome-shell

# Flat remix
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt-get update
sudo apt-get install flat-remix-gnome

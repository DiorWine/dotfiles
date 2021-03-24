#!/bin/bash
# backgroud auto skip

BG_FOLDER=~/Pictures/wallpaper/

while $(true)
do
    time_now=$(date +%H)
    if [ $time_now -gt 8 ] && [ $time_now -lt 18 ]; then
        feh --recursive --randomize --bg-fill $BG_FOLDER/daytime/*
    else
        feh --recursive --randomize --bg-fill $BG_FOLDER/night/*
    fi
    sleep 30m
done

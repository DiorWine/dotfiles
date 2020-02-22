#!/bin/bash
# backgroud auto skip


while $(true)
do
    time_now=$(date +%H)
    if [ $time_now -gt 8 ] && [ $time_now -lt 18 ]; then
        feh --randomize --bg-fill ~/Pictures/wallpaper/daytime/*
    else
        feh --randomize --bg-fill ~/Pictures/wallpaper/night/*
    fi
    sleep 30m
done

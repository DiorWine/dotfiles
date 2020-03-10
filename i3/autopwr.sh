#!/bin/bash

# Power Monitor
# 低电量警告并黑屏，充电后恢复

LOW=10
WARN=5

while $(true)
do
    power_percent=$(cat /sys/class/power_supply/BAT1/capacity)
    power_status=$(cat /sys/class/power_supply/BAT1/status)

    if [ $power_percent -lt $LOW ] && [ $power_status = "Discharging" ]; then
        xrandr --output eDP-1 --brightness 0.4
        rofi -e "<span color='#DC322F'><b>电量低，请充电！</b></span>" -markup
        
        # 循环提醒
        while [ $power_percent -lt $LOW ] && [ $power_status = "Discharging" ]
        do
            sleep 1m
            power_percent=$(cat /sys/class/power_supply/BAT1/capacity)
            power_status=$(cat /sys/class/power_supply/BAT1/status)
            if [ $power_status != "Discharging" ]; then
                break
            fi

            if [ $power_percent -lt $WARN ]; then
                rofi -theme /usr/share/rofi/themes/Pop-Dark.rasi -e お兄ちゃん，要关机啦！
            elif [ $power_percent -lt $LOW ]; then
                notify-send "お兄様，真的要没电啦！" --urgency=critical
            fi
            power_percent=$(cat /sys/class/power_supply/BAT1/capacity)
            power_status=$(cat /sys/class/power_supply/BAT1/status)
        done

        # 电量高于警戒线或插入电源，恢复亮度
        xrandr --output eDP-1 --brightness 1
    fi
    sleep 1m
done

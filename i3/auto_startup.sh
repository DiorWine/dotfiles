#!/bin/bash

# 防止二次登录，加载重复脚本
if ps aux | grep /home/wine/.config/i3/startup/auto | grep -v grep; then
    feh --randomize --bg-fill /home/wine/Pictures/wallpaper/night/cyberpunk.png
else
    /bin/bash /home/wine/.config/i3/startup/autopwr.sh &
    /bin/bash /home/wine/.config/i3/startup/autoswitch.sh &
fi

libinput-gestures-setup restart
bash /home/wine/.config/i3/startup/autotouch.sh &

while :
do
    if ps aux | grep clash | grep -v grep; then
        exec /home/wine/software/Clash/Startup.sh
        break
    else
        sh -c /home/wine/software/Clash/clash-linux-amd64 &
    fi
    sleep 1
done

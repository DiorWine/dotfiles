#!/bin/bash
intern=eDP-1
extern1=DP-1
extern2=DP-2

scan_extern(){
    if xrandr | grep "$extern1 disconnected" > /dev/null; then
        if xrandr | grep "$extern2 disconnected" > /dev/null; then
            rofi -e "<span color='#DC322F'><b>no extern display</b></span>" -markup
            xrandr --output $intern --auto
            extern="null"
        else
            extern=$extern2
        fi
    else
        extern=$extern1
    fi
}

rofi_sel(){
    echo $extern
    sel=$( echo "仅电脑屏幕|复制|拓展|仅第二屏幕" | rofi -sep '|' -dmenu -lines 4 -p "Display" )
    case $sel in
        "仅电脑屏幕")
            xrandr --output $extern1 --off --output $extern2 --off --output $intern --auto
        ;;
        "复制")
            xrandr --output $extern --auto --output $intern --same-as $extern
        ;;
        "拓展")
            orient=$( echo "left|right" | rofi -sep '|' -dmenu -lines 2 -p "Orientation" )
            case $orient in
                "left")
                    xrandr --output $intern --auto --output $extern --auto --left-of $intern
                ;;
                "right")
                    xrandr --output $intern --auto --output $extern --auto --right-of $intern
                ;;
            esac
            feh --bg-fill ~/Pictures/cyberpunk/wallpaper.jpeg
        ;;
        "仅第二屏幕")
            xrandr --output $intern --off --output $extern --auto
        ;;
    esac
}

scan_extern
if [ $extern != "null" ]; then
    rofi_sel
fi


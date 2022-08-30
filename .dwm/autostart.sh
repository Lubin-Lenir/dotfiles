#! /bin/bash

status () {

        echo -n " $(mpc --format '%title% - %artist%' current) |  $(pactl list sinks | grep '^[[:space:]]
Volume:' | \
                head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')% |  $(acpi |
awk '{print $4}' | sed s/,//) |  $(date '+%d-%m-%Y') |  $(date '+%H:%M') "
}





feh --bg-fill ~/Downloads/image.png &
picom --config ~/.config/picom/picom.conf &
mpd &
~/.config/dunst/./reload_dunst.sh &
xrdb ~/.cache/wal/colors-flexipatch &

#while :; do

#       xsetroot -name "$(status)"
#       sleep 20s
#done &
music_not &
#~/.config/polybar/launch.sh --grayblocks &
dwmblocks &

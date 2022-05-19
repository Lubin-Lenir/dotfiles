#! /bin/bash
feh --bg-fill ~/Downloads/abara_wal.png &
picom --config ~/.config/picom/picom.conf & 
status () { 

	echo -n " $(pactl list sinks | grep '^[[:space:]]Volume:' | \
		head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')% |  $(acpi | awk '{print $4}' | sed s/,//) |  $(date '+%d-%m-%Y') |   $(date '+%H:%M')   "
}

while :; do
	
	xsetroot -name "$(status)"
	sleep 20s
done &


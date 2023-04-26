#!/bin/bash

options=$(printf "  Power Off\n  Restart\n  Suspend\n  Hibernate\n  Log Out\n  Lock")

selected=$(echo -e "$options" | fuzzel --dmenu --border-width=3 --inner-pad=10 --width=30  --line-height=30 --lines=6 -b#11121Dff -t#9399b2ff -s#2e3440ff -S#8fbcbbff -C#88c0d0ff --show-actions --terminal=foot)

case "$selected" in
	"  Power Off") poweroff ;;
	"  Restart") reboot ;;
	"  Suspend") systemctl suspend ;;
	"  Hibernate") systemctl hibernate ;;
	"  Log Out") hyprctl dispatch exit ;;
	"  Lock") swaylock -c 11121D;;
	*) exit 1 ;;
esac

export PATH=/usr/bin:/dot/.local/bin:/dot/files/bin
source /dot/files/bin/load

if [ -z $DISPLAY ] && [ `tty` = /dev/tty1 ]; then
	vrum && big

	Hyprland > /dot/run/wm-log &
	DISPLAY=:0 spool
fi


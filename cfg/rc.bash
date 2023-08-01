export PATH=/usr/bin:~/.local/bin:~f/bin
source .f

if [ -z $DISPLAY ] && [ `tty` = /dev/tty1 ]; then
	vrum && big

	read -p '> wake up neo...'
	echo 'knock knock'
	sleep 1

	Hyprland > ~f/run/wm-log &
	DISPLAY=:0 spool
fi


export OLDPATH=$PATH
export PATH="/usr/bin:~/.local/bin:./bin"

source .f
cd ~f

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
	wf &
	
	export DISPLAY=:0
	spool
fi

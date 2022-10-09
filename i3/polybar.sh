#!/bin/bash
APPLETS="nm-applet blueman-applet pasystray"

pkill polybar
polybar &

sleep 5
for A in $APPLETS
do
	PID=$(ps aux | grep -v grep | grep $USER | grep $A | awk '{print $2}')
	if [ -z $PID ]
	then
		$A &
	fi
done

PID=$(ps aux | grep -v grep | grep $USER | grep cbatticon | awk '{print $2}')
if [ -z $PID ]
then
	cbatticon -n -c "systemctl hibernate"
fi

#!/bin/bash
APPLETS="cbatticon nm-applet blueman-applet pasystray"
ALL_PIDS=()

for A in $APPLETS
do
	PIDS=$(ps aux | grep -v grep | grep $USER | grep $A | awk '{print $2}')
	for P in $PIDS
	do
		ALL_PIDS+=( $P )
	done
done

for I in ${ALL_PIDS[@]}
do
	kill $I
done

pkill polybar
polybar &

sleep 5
for A in $APPLETS
do
	$A &
done

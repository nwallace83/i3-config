#!/bin/bash

VMRUNNING=$(ps aux | grep VirtualBoxVM | grep Windows | wc -l)
if [ $VMRUNNING -ne 0 ]
then
	/usr/bin/notify-send "Windows VM is running, hibernating......"
	/usr/bin/VBoxManage controlvm Windows savestate
fi
pkill cbatticon
pkill nm-applet
pkill blueman-applet
pkill pasystray
pkill code
i3-msg exit

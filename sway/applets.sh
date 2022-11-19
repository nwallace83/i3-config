#!/bin/bash
pkill blueman-applet
pkill nm-applet
sleep 1
/usr/bin/nohup blueman-applet > /dev/null 2>&1 &
/usr/bin/nm-applet --indicator > /dev/null 2>&1 &

#!/bin/bash
pkill cbatticon
pkill nm-applet
pkill blueman-applet
pkill pasystray
sleep 1
/usr/bin/nohup cbatticon > /dev/null 2>&1 &
/usr/bin/nohup nm-applet > /dev/null 2>&1 &
/usr/bin/nohup blueman-applet > /dev/null 2>&1 &
/usr/bin/nohup pasystray > /dev/null 2>&1 &

#!/bin/sh

choix=$(echo "HDMI on\nHDMI off" | dmenu -fn hack-12 -nb "#000")

if [ "$choix" = "HDMI off" ]
then
xrandr --output HDMI1 --off
fi

if [ "$choix" = "HDMI on" ]
then
xrandr --output HDMI1 --auto --right-of DP1
fi

#!/usr/bin/zsh

id=$(wmctrl -l | dmenu -l 20 -p "select window:" | awk '{print $1}')
bspc node $id -g hidden=off
bspc node $id -f 


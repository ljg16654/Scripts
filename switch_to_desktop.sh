#!/bin/zsh

desktop_name=$(bspc query -D --names | dmenu -l 100)
if bspc query -D --names | grep -x $desktop_name ; then
    bspc node -d $desktop_name
    bspc desktop -f $desktop_name
else
    bspc monitor -a $desktop_name
    bspc node -f -d $desktop_name
fi

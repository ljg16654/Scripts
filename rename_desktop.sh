#!/bin/zsh

desktop_name=$(dmenu -p "new name")
bspc desktop -n $desktop_name

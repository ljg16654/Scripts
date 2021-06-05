#!/usr/bin/zsh

hsetroot -solid "#c5e1a5"
operandi='(load-theme `modus-operandi t)'
emacsclient -e $operandi
bspc config normal_border_color "#ffffff"
bspc config focused_border_color "#000000"

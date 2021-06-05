#!/usr/bin/zsh

hsetroot -solid "#001004"
vivendi='(load-theme `modus-vivendi t)'
emacsclient -e $vivendi
bspc config normal_border_color "#000000"
bspc config focused_border_color "#ffffff"

#!/bin/zsh
if xdo id -N Alacritty;then
    aids=$(xdo id -N Alacritty)
    for aid in $aids
    do bspc node $aid --flag hidden --to-monitor focused --focus
    done
else
    alacritty -e tmux attach
fi

#!/bin/sh

WALLPAPER_DIR=~/Pictures/Wallpapers
WALLPAPER_FN=$(sxiv $WALLPAPER_DIR -o | tail -n 1)
feh --bg-fill $WALLPAPER_FN

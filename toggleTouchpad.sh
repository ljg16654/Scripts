#!/bin/bash

DEVICE='DELL097D:00 04F3:311C Touchpad'

enabled=$(xinput list-props "$DEVICE" | awk '/^\tDevice Enabled \([0-9]+\):\t[01]/ {print $NF}')
case $enabled in
  0)
    xinput enable "$DEVICE"
    echo "$DEVICE enabled"
    ;;
  1)
    xinput disable "$DEVICE"
    echo "$DEVICE disabled"
    ;;
  *)
    echo
    xinput list --name-only
    ;;
esac

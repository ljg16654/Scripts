#!/usr/bin/env bash

DEVICE='AT Translated Set 2 keyboard'

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

#!/bin/sh

QUTE_DATA_DIR=/home/jigang/.local/share/qutebrowser
QUTE_CONFIG_DIR=/home/jigang/.config/qutebrowser
sqlite3 -separator ' ' "$QUTE_DATA_DIR/history.sqlite" 'select title, url from CompletionHistory'

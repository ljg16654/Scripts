#!/usr/bin/zsh

gs -dBATCH -dNOPAUSE -dQUIET -sDEVICE=pdfwrite \
    -sOutputFile=$3 \
    $1 \
    $2

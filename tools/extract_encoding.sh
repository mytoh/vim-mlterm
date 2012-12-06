#!/usr/bin/env sh

# $ extract_encoding.sh xwindow/win32/x_font.c

grep "{.*}" $1 | awk -F "," '{print $1}' | tr -d '{' |tr -d ' '

#!/bin/bash

# Written by Woland

# swaps the caps-lock and escape keys on startup

# no need to alter any.X file or system config

# dependencies: pacman -S xorg-xmodmap// pacman -S xev// pacman -S xorg-setxkbmap// pacman -S xorg-xset

# use below script in your terminal for knowing keycode names

# xev's output is garbage by default just use the line below

# xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'


xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'keycode 9 = Caps_Lock'
xmodmap -e 'clear lock'



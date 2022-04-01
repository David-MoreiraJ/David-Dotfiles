#! /bin/sh

dwmblocks &
sxhkd &
xset -dpms s off &
#setxkbmap br &
picom --experimental-backends -b &
xrdb ~/.Xresources &
feh --bg-scale /home/anon/Imagens/285.png &

#!/bin/bash

wallNumber=`ls ~/Wallpapers | wc -l`
selected=$((( RANDOM % $wallNumber ) +1 ))

setWallpaper="~/Wallpapers/wall${selected}.jpg"
DISPLAY=:0 feh --bg-scale $setWallpaper

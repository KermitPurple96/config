#!/usr/bin/env sh
# ADD as ~/.config/polybar/launch.sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

## Launch

## Left bar
polybar log -c ~/.config/polybar/current.ini &
polybar secondary -c ~/.config/polybar/current.ini &
polybar terciary -c ~/.config/polybar/current.ini &
polybar quaternary -c ~/.config/polybar/current.ini &
## Right bar
#polybar top -c ~/.config/polybar/current.ini &
polybar primary -c ~/.config/polybar/current.ini &
polybar quinary -c ~/.config/polybar/current.ini &
polybar sextary -c ~/.config/polybar/current.ini &
polybar firefox -c ~/.config/polybar/current.ini &
polybar burpsuite -c ~/.config/polybar/current.ini &
#polybar files -c ~/.config/polybar/current.ini &




## Center bar
polybar primary -c ~/.config/polybar/workspace.ini &

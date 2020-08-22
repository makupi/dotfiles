#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# echo "---" | tee -a /tmp/polybar.log
# polybar example >> /tmp/polybar.log 2>&1 & disown

# echo "Polybar launched.."

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    echo "------" | tee -a /tmp/polybar$m.log
    MONITOR=$m polybar --reload example >> /tmp/polybar$m.log 2>&1 &disown
  done
else
  polybar --reload example &
fi

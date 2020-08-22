#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# echo "---" | tee -a /tmp/polybar.log
polybar example 

# echo "Polybar launched.."

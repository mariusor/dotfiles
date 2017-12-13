#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

MONITOR=eDP1 polybar main &
#MONITOR=DP-1-1 polybar top &
#MONITOR=eDP-1 polybar bottom &

echo "Bars launched..."

#!/bin/bash

function cleanup_func {
    sleep 0.5

    kill $(jobs -pr)
    echo cleanup
}

#trap "exit \$exit_code" INT TERM
#trap "exit_code=\$?; cleanup_func; kill 0" EXIT

notify-send "Locking"
pkill -f "swaylock -f -i"

swaylock -f -i ~/Pictures/wallpapers/micleusanu-blur.jpg --indicator-radius=80 -c 222222

#~/.local/bin/cam.sh &

#watch -n 2 'pgrep -f swaylock || pkill -KILL -f "watch -n"'

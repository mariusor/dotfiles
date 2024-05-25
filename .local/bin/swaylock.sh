#!/bin/bash

function cleanup_func {
    sleep 0.5

    kill $(jobs -pr)
    echo cleanup
}

trap "exit \$exit_code" INT TERM
trap "exit_code=\$?; cleanup_func; kill 0" EXIT

swaylock -f

#~/.local/bin/cam.sh &

#watch -n 2 'pgrep -f swaylock || pkill -KILL -f "watch -n"'

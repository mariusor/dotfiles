#!/bin/bash

MON_COUNT="$(xrandr | grep -c ' connected')"
WIFI="$(iwgetid -r)"
DIR="$XDG_DATA_HOME/screenlayout"

if [[ -f "${DIR}/${MON_COUNT}way-${WIFI}.sh" ]]; then
    source ${DIR}/${MON_COUNT}way-${WIFI}.sh 
    notify-send "Layout ${WIFI} ${MON_COUNT} displays"
else
    source ${DIR}/${MON_COUNT}way.sh
    notify-send "Layout generic ${MON_COUNT} displays"
fi
nitrogen --restore


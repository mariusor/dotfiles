#!/bin/bash

MON_COUNT="$(xrandr | grep -c ' connected')"
WIFI="$(iwgetid -r)"
DIR="$XDG_DATA_HOME/screenlayout"

notify-send "${WIFI}" "Switching to ${MON_COUNT} displays" 
test $MON_COUNT -eq 3 && source ${DIR}/3way-${WIFI}.sh && nitrogen --restore && exit
test $MON_COUNT -eq 3 && source ${DIR}/3way.sh && nitrogen --restore && exit
test $MON_COUNT -eq 2 && source ${DIR}/2way-${WIFI}.sh && nitrogen --restore && exit
test $MON_COUNT -eq 2 && source ${DIR}/2way.sh && nitrogen --restore && exit
test $MON_COUNT -eq 1 && source ${DIR}/1way.sh && nitrogen --restore && exit


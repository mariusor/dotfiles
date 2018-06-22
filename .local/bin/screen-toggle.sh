#!/usr/bin/env sh
set -euf
dir="$XDG_DATA_HOME/screenlayout/"

# get user choice
layout="$(ls $dir | sed 's/.sh$//' | rofi -dmenu)"

# run script (source to avoid unnecessary process)
. $dir/${layout}.sh

nitrogen --restore

# notification informing user of change
notify-send "Display: $layout"


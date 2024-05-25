swayidle -w \
        timeout 300  '~/.local/bin/swaylock.sh' \
        timeout 301  'swaymsg "output * dpms off"' \
        resume       'pkill watch; swaymsg "output * dpms on"' \
        before-sleep '~/.local/bin/swaylock.sh'


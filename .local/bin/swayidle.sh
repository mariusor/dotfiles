swayidle -w \
        timeout 300  '~/.local/bin/swaylock.sh' \
        timeout 600  'swaymsg "output * dpms off"' \
        resume       'pkill -f 'swayidle.sh -w'; swaymsg "output * dpms on"' \
        before-sleep '~/.local/bin/swaylock.sh'


#!/bin/env sh
rfkill unblock bluetooth
bluetoothctl disconnect 00:1B:66:8B:5F:C2
bluetoothctl power on
bluetoothctl connect 00:1B:66:8B:5F:C2
#pactl set-card-profile bluez_card.00_1B_66_8B_5F_C2 a2dp_sink

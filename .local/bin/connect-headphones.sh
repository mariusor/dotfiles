#!/bin/env bash

mac=00:1B:66:8B:5F:C2
what=$(basename ${0})
if [ ${what} = "connect-shockz.sh" ]; then
    mac=20:74:CF:D3:64:23
fi
rfkill unblock bluetooth
bluetoothctl disconnect ${mac}
bluetoothctl power on
bluetoothctl connect ${mac}
#pactl set-card-profile bluez_card.00_1B_66_8B_5F_C2 a2dp_sink

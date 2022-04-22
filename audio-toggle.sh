#!/bin/bash
audio_profile=$(
    echo $(~/myscripts/./audio-status.sh) | awk '{print $6}'
)

if [[ $audio_profile = "" ]]
then 
    echo "no headset"
else
    bt_mac=$(
        echo $(grep bt_mac ~/myscripts/.private) | awk '{print $2}'
    )
    if [[ $audio_profile = "headset_head_unit" ]]
    then 
        pactl set-card-profile bluez_card.$bt_mac a2dp_sink
    else 
        pactl set-card-profile bluez_card.$bt_mac headset_head_unit
    fi

    echo "Switched audio to: "
    ~/myscripts/./audio-status.sh
fi


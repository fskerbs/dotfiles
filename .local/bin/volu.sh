#!/bin/sh

# 1. Change the volume
wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+

# 2. Get status once and store it
RAW_STATUS=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

# 3. Parse volume and mute status using shell logic or a single awk call
VOLUME=$(echo "$RAW_STATUS" | awk '{print int($2 * 100)}')

if echo "$RAW_STATUS" | grep -q "MUTED"; then
    MSG="Volume ($VOLUME%) (MUTED)"
else
    MSG="Volume ($VOLUME%)"
fi

# 4. Notify
notify-send -t 2000 -r 777 "$MSG" --hint=int:value:"$VOLUME"

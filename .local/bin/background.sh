#!/bin/sh

num=$(od -An -N2 -i /dev/urandom | awk '{print ($1 % 9)}')

count=0
for file in "$HOME/.local/share/backgrounds"/*; do
    if [ "$count" -eq "$num" ]; then
        break
    fi
    count=$((count + 1))
done

if [ "$num" -gt 4 ]; then
    feh --no-fehbg --bg-fill "$file"
else
    feh --no-fehbg --bg-tile "$file"
fi

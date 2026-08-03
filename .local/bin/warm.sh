#!/bin/sh

STATE="/tmp/redshift.state"

if [ ! -e "$STATE" ]; then
    redshift -PO 4500 && touch "$STATE"
else
    redshift -x
    rm -f "$STATE"
fi

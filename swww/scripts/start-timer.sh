#!/bin/bash
set -e

if [[ $(pgrep -f $0) != $$ ]]; then
    echo "This script is already running!"
    exit 1
fi

source "$(dirname $0)/../swww.conf" 

while true; do
    sleep "$TIMER"
    "$(dirname $0)/set-random-image.sh";
done

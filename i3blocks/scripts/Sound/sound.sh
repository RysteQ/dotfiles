#!/bin/bash
percentage=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)
printf "%.0f%%" $percentage

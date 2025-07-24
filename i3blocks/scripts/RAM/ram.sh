#!/bin/bash
percentage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
printf "%.0f%%\n" "$percentage"

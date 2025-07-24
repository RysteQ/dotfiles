#!/bin/bash
usage=$((10000 - `mpstat 1 1 | tail -1 | rev | cut -d ' ' -f 1 | rev | tr -d .`))
printf " %.0f%%\n" $((usage / 100)).$((usage % 100))

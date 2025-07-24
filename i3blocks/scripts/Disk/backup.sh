#!/bin/bash
mounting_point='/mnt/2TB_drive'
percentage=$(df --output=pcent $mounting_point | tr -dc '0-9')
printf "%s %.0f%%\n" $mounting_point $percentage

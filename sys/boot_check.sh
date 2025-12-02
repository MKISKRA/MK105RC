#!/bin/bash

FILE_PATH_1="/sys/class/leds/gsm_pwr_key/brightness"
FILE_PATH_2="/sys/class/leds/gsm_pwr_key_new/brightness"

if [[ -f "$FILE_PATH_1" && -f "$FILE_PATH_2" ]]; then
    clear	
    echo "BOOT OK."
else
    clear
    echo "BOOT ERROR."
fi

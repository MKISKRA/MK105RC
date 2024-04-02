#!/bin/sh

### burn stm8 in "accumulatornii modul"

cd /root/mk100/MK100/akb3
echo 1 > /sys/class/leds/charger_board_ena_b/brightness
echo 495 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio495/direction
echo 1 > /sys/class/gpio/gpio495/value


STM8WD_SERIALDEV=/dev/ttyS5 STM8WD_DEBUG=0 STM8WD_FWSREC=stm8_iskra_charger.srec STM8WD_FORCEUPDATE=true  ${d}./stm8wd

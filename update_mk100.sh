#!/bin/bash
pkill MK100T; cd /root/mk100/MK100/ ; git fetch --all ; git reset --hard ; git pull; cp /root/mk100/MK100/MK100T /root/mk100/mk100t/MK100T; chmod +x /root/mk100/mk100t/MK100T;
#cp /root/mk100/MK100/sys/powercontrol.sh /root/mk100/mk100t/powercontrol.sh; chmod +x /root/mk100/mk100t/powercontrol.sh;
#cp /root/mk100/MK100/sys/modemcontrol.sh /root/mk100/mk100t/modemcontrol.sh; chmod +x /root/mk100/mk100t/modemcontrol.sh;
cp /root/mk100/MK100/sys/boot_check.sh /root/mk100/mk100t/boot_check.sh;
chmod +x  /root/mk100/mk100t/boot_check.sh;
sleep 1;
systemctl stop tpucontrol;
systemctl stop modemcontrol;
sleep 1;
cp /root/mk100/MK100/sys/tpu_mk100 /root/mk100/mk100t/tpu_mk100
chmod +x /root/mk100/mk100t/tpu_mk100;
sleep 1;
cp /root/mk100/MK100/sys/modemcontrol /root/mk100/mk100t/modemcontrol
chmod +x /root/mk100/mk100t/modemcontrol;
sleep 1;
cp /root/mk100/MK100/sys/gpsd /etc/default/gpsd;
cd /;
/home/linaro/start.sh

#!/bin/sh

if [ "`lsmod|grep nuvoton-cir|wc -l`" -gt "0" ]; then
modprobe -r nuvoton_cir
echo "auto" > "/sys/bus/acpi/devices/NTN0530\:00/physical_node/resources"
modprobe nuvoton_cir
fi

(sleep 60; /sbin/hwclock -w;)&

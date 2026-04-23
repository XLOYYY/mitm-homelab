#!/bin/bash

if [ "$EUID" -ne 0 ]; then

echo "[Error] Run as root"
exit 1

fi


Interface=eth1
Output="logs/capture.pcap"



echo "[Info] Starting packet capture on $Interface"
tcpdump -i $Interface -w $Output

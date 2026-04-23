#!/bin/bash


if [ "$EUID" -ne 0 ]; then

	echo "[Error] Run as root"
	exit 1
fi

echo "[Info] Enabling ip forwarding..."

echo 1 > /proc/sys/net/ipv4/ip_forward

echo "[Ok] ip forwarding enabled"





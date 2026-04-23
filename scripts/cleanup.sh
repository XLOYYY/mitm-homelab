#!/bin/bash


echo "[Info] Cleaning up..."

killall arpspoof 2>/dev/null
echo 0 > /proc/sys/net/ipv4/ip_forward

echo "[Ok] Cleanup complete"






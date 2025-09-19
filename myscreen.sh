#!/usr/bin/env bash
# myscreen.sh - wrapper for scrcpy wireless mirroring
# Author: Kumar Satyam
# License: MIT

# Detect the device IP address from wlan0
IP=$(adb shell ip -f inet addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

if [ -z "$IP" ]; then
  echo "❌ Could not detect device IP. Is it connected to Wi-Fi and USB debugging enabled?"
  exit 1
fi

echo "Connecting to $IP..."
adb tcpip 5555
adb connect "$IP:5555"

# Run scrcpy with tuned defaults
echo "🎥 Launching scrcpy..."
scrcpy --max-fps 30 --bit-rate 16M -s "$IP:5555"

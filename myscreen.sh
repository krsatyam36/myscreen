#!/usr/bin/env bash
# myscreen.sh — wrapper for scrcpy wireless mirroring
# Author: KUMAR SATYAM
# License: MIT

# Check if required tools are installed
if ! command -v adb >/dev/null; then
  echo "⚠️ adb not found. Please install adb."
  exit 1
fi

if ! command -v scrcpy >/dev/null; then
  echo "⚠️ scrcpy not found. Please install scrcpy."
  exit 1
fi

# Detect the device IP address on wlan0 (Android device must be on same Wi-Fi)
IP=$(adb shell ip -f inet addr show wlan0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

if [ -z "$IP" ]; then
  echo "❌ Could not detect device IP. Is your Android device connected to Wi-Fi and USB debugging enabled?"
  exit 1
fi

echo "📡 Switching to TCP/IP mode and connecting to $IP:5555..."
adb tcpip 5555
adb connect "$IP:5555"

# Launch scrcpy with your preferred defaults
echo "🎥 Launching scrcpy..."
scrcpy --max-fps 30 --bit-rate 16M -s "$IP:5555"

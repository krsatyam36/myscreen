# myscreen
Wrapper around scrcpy/adb for smooth wireless screen mirroring


# myscreen

`myscreen` is a tiny Bash wrapper around [scrcpy](https://github.com/Genymobile/scrcpy) and `adb` that makes **wireless screen mirroring** to your Android device effortless.  

Instead of typing long `adb connect` commands or remembering scrcpy flags, just run one command:  

```bash
./myscreen.sh


✨ Features

🔍 Auto-detects your device IP (no need to type it manually).

📡 Connects automatically via adb Wi-Fi on port 5555.

🎥 Smooth defaults → 30 FPS, 16 Mbps bitrate.

🖥️ Works with Ubuntu 22.04+ and any Android device with developer mode enabled.

💡 Simple Bash script, easy to customize.


Requirements

Ubuntu/Debian system (tested on Ubuntu 22.04.05)

ADB
:

sudo apt install adb


scrcpy
:

sudo apt install scrcpy

Installation

Clone the repo:

git clone https://github.com/krsatyam36/myscreen.git
cd myscreen
chmod +x myscreen.sh


Optionally, add it to your shell config so you can call it anywhere:

echo 'alias myscreen="$HOME/myscreen/myscreen.sh"' >> ~/.bashrc
source ~/.bashrc


Now just run:

myscreen

Usage

Connect your Android device via USB at least once and enable USB debugging.

Ensure your laptop and device are on the same Wi-Fi network.

Run:

./myscreen.sh


Your device screen will appear on your Ubuntu desktop.

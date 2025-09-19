# myscreen

Wrapper around `scrcpy` + `adb` for smooth wireless screen mirroring.

---

##  What is this

`myscreen` is a tiny Bash wrapper that makes mirroring your Android device’s screen super easy. Instead of typing long adb commands and remembering scrcpy flags, you just run one script.

---

##  Features

-  Auto-detects device IP (no need to type it manually)  
-  Connects automatically over adb Wi-Fi (port 5555)  
-  Smooth defaults → 30 FPS, 16 Mbps bitrate  
-  Works with Ubuntu 22.04+ (should work on other Linux too)  
-  Simple, easy to tweak

---

## ⚙ Requirements

- Linux (Ubuntu / Debian)  
- `adb` installed  
- `scrcpy` installed  
- Android device with **USB debugging enabled**  
- Both laptop and device on the **same Wi-Fi network**

---

##  Installation

```bash
git clone https://github.com/krsatyam36/myscreen.git
cd myscreen
chmod +x myscreen.sh

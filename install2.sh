echo "Windows 8 x86 Lite On Google Colab"
echo "Note: Use Right-Click Or Ctrl+C To Copy"
echo "Please Keep Colab Tab Open, Maximum Time 12h"
echo Script by Storagedrive404outlook
sudo qemu-system-x86_64 -vnc :0 -hda /content/android.vdi  -smp cores=2  -m 8192M -machine usb=on -device usb-tablet > /dev/null 2>&1

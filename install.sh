wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Paste authtoken here (Copy and Ctrl+V to paste then press Enter): " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &
echo Please wait for installing...
sudo apt update -y > /dev/null 2>&1
echo "Installing QEMU (2-3m)..."
sudo apt install qemu-system-x86 qemu qemu-system curl -y > /dev/null 2>&1
echo Downloading Windows Disk...
curl -L -o android.7z https://altushost-swe.dl.sourceforge.net/project/osboxes/v/vb/1-A-d/Lineage-OS-CynagenMod/14.1/R5/64bit.7z
7z e android.7z
echo Rename The file in 64 file Lineage CM 14.1-R5 (64bit).vdi to android.vdi
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'

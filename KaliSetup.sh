!/bin/bash
echo "Kali linux light 32 bit for vnc "
echo "kali by mogd "
echo "Download Files"
echo "Version 3.6.7"




set -x
cd
pkg update -y
pkg install x11-repo -y
pkg install termux-api -y
pkg install qemu-system-i386 -y
mkdir kali-qemu
cd kali-qemu
qemu-img create -f qcow2 KLQ-disk.img 5G
termux-download [-d none] [-t KLQ.iso] [-p KLQ] url-https://archive.org/download/w-mint/W-MINT.iso
set +x




echo "
****for start****
qemu-system-i386 -smp 2 -net nic -net user -device AC97 -m 2048 -vnc 127.0.0.1:8080 -cdrom /KLQ/KLQ.iso -hda /KLQ/KLQ-disk.img"

echo " VNC: 127.0.0.1:8080 "

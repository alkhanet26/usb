#!/bin/bash
# This Script by ALK-NET


{
echo -e "Install script RESET KONEKSI USB"
sleep 2
clear
echo -e "Download Binaries"
sleep 1
wget --no-check-certificate "https://raw.githubusercontent.com/alkhanet26/usb/main/resetusb" -O /sbin/resetusb && chmod +x /sbin/resetusb
clear
echo -e "Download Finished"
sleep 3
clear
echo -e "Memasang pada CronJob"
echo -e "*/1 * * * * sh /sbin/resetusb" >> /etc/crontabs/root
clear
echo -e "Proses sudah Selesai"
sleep 5
bash --login
}
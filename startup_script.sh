#! /bin/bash
echo `sudo mdadm --build /dev/md0 --chunk=64 --level=0 --raid-devices=2 /dev/sdb1 /dev/sdc1`
echo `sudo mount -t ntfs /dev/md0 /media/Media`
echo `exit`

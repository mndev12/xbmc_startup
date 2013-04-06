#!/bin/bash
# Steps to get XBMC working in RAID.  Do not use this on your system unless you change the /dev/sdc labels first - each system gives different labels to it's drives.
# 1. Install mdadm
# 2. Create the Media directory at /media/Media
# 3. Create this file as root user and place it in the /etc/init.d/ directory.  Save it as "startup.sh"  
# 4. Run update to get script read before startup - update-rc.d startup.sh defaults
#
# Source: http://kvz.io/blog/2007/07/29/schedule-tasks-on-linux-using-crontab/ 
echo `sudo mdadm --build /dev/md0 --chunk=64 --level=0 --raid-devices=2 /dev/sdb1 /dev/sdc1`
echo `sudo mount -t ntfs /dev/md0 /media/Media`
echo `exit`


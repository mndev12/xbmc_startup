# Steps to get XBMC working in RAID.  Do not use this on your system unless you change the /dev/sdc labels first - each system gives different labels to it's drives.
# 1. Install mdadm
# 2. Create this file as root user and place it in your root directory.  Label it "startup.sh"  
# Then chmod +x startup.sh
# 3. Create a cron job as root user
# @reboot  /root/startup.sh >> /var/log/start_script_output.log > 2>&1
# 4. Restart the server and verify it mounts correctly.
#
# Source: http://kvz.io/blog/2007/07/29/schedule-tasks-on-linux-using-crontab/ 
# 
#! /bin/bash
echo `sudo mdadm --build /dev/md0 --chunk=64 --level=0 --raid-devices=2 /dev/sdb1 /dev/sdc1`
echo `sudo mount -t ntfs /dev/md0 /media/Media`
echo `exit`


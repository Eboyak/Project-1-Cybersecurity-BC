#!/bin/bash

#Free memory output to a free_mem.txt file
 free -h | grep 'Mem\|free' | awk '{print $1, $3}' > ~/backups/freemem/free_mem.txt
#Disk usage output to a disk_usage.txt file
 df -h | awk '{print $3}' > ~/backups/diskuse/disk_usage.txt
#List opem files to a open_list.txt file
 sudo lsof > ~/backups/openlist/open_list.txt
#Free disl space to a free_disk.txt file
 sudo du -h --total > ~/backups/freedisk/free_disk.txt


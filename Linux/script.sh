#!/bin/bash

# define var
output=$HOME/research/sys_info.txt
ip=$(ip addr | grep inet | tail -2 | head -1)

if [ ! -d $HOME/research ] ; then
mkdir $HOME/resarch
fi

if [ -f $HOME/research/sys_info.txt ] ; then
echo 'file found deleting it'
rm $HOME/research/sys_info.txt
fi

echo "A quick sys audit" > $output
date >> $output
echo "Machine type:" >> $output
echo "$MACHTYPE \n" >> $output
echo -e "Uname info: $(uname -a) \n" >> $output
echo -e "IP info: $ip \n" >> $output
echo "Hostname: $(hostname -s)" >> $output
echo -e "\n777 Files:" >> $output

find /home -type f -perm 777 > $output
ps aux --sort -%mem |  awk '{print $1,$2,$3,$4,$11}' | head -n 11 >> $output


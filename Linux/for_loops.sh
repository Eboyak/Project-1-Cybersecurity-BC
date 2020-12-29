#!/bin/bash
favState=('California' 'Hawaii' 'Colorado' 'Ohio' 'Louisiana')
for i in ${favState[@]};
do
	if [ $i = 'Hawaii' ] ; then
	echo 'Hawaii is the best'
	else
	echo 'Im not fond of Hawaii'
	fi
done
num=(0 1 2 3 4 5 6 7 8 9)
for z in ${num[@]};
do
	if [ $z == 3 ] || [ $z == 5 ] || [ $z == 7 ]
	then
	echo $z
	fi
done
new=$(find /home -type f -perm 777 2>/dev/null)
for i in ${new[@]}
do
	echo $i
done
for file in $(ls) ; do
echo $file
done

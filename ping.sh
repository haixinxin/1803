#!/bin/bash

for i in {1..254}
do

ping -c3 -i 0.1 -W 1 176.43.7.$i  &>/dev/null
if [ $? -eq 0 ];then
	echo "176.43.7.$i is up "
else 
	echo "176.43.7.$i is down"
fi
done

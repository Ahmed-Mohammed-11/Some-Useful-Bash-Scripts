#!/bin/bash
#you can change the range in the for loop of course
for i in {20..35}
do
  if [ $(ping 192.168.1.$i) ]
  then 
    echo "the host is up\n"
  else 
    echo "the host is down\n"
  fi
done 

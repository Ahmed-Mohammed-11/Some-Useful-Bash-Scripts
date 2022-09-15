#!/bin/bash 
for i in $(seq 0 10)
do 
  ifconfig eth0 192.168.1.$i 
  sleep 5 
done
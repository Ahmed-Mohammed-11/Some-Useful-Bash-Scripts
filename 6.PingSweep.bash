#!/bin/bash
echo "provide 1 referring to class B or 2 as class C"
read -p "enter the class of your network subnet : " Subnet
read -p "enter the netword portion : " Netportion
if [ $Subnet -eq 1 ]
then
   for octet_3 in $(seq 0 255);do
     for octet_4 in $(seq 1 255);do
# the idea here is to grep a word that appear when the host responds and trucate it to show the result in clear format
       if ping -c 2 $Netportion.$octet_3.$octet_4 | grep "64 bytes" &> /dev/null
       then
            echo "The host $Netportion.$octet_3.$octet_4 is up"
       else
            echo "The host $Netportion.$octet_3.$octet_4 is down"
       fi
     done
   done
elif [ $Subnet -eq 2 ]
then
   for octet_4 in $(seq 1 255);do
# the idea here is to grep a word that appear when the host responds and trucate it to show the result in clear format
     if ping -c 2 $Netportion.$octet_4 | grep -q "time=" #to grep this word in quiet mode
     then
          echo "The host $Netportion.$octet_4 is up"
     else 
          echo "The host $Netportion.$octet_4 is down"
     fi
   done
fi

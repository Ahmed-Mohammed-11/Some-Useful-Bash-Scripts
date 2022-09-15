#!/bin/bash 
# this script generates password for your accounts and saves it to file in the directory /usr/bin/passwords
touch /usr/bin/passwords
read -p "the number of passwords you want to generate : " nom
for pass in $(seq 1 $nom)
do
  read -p "enter the length of desired password : " len
  read -p "enter the app you want the password for : " appname
  tmp=$(openssl rand -base64 48 | cut -c1-$len)
  echo "$appname password is --> $tmp" >> /usr/bin/passwords
done 
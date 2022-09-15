#!/bin/sh
echo "\n" 
echo "\n" 
figlet -f Bloody "  S U B       I T "| ./lolcat -a -d 2
if [ -z $2 ] 
then
echo "[**]   Made By AXmous" | ./lolcat -a -d 50

if [ "$1" = "-h" ] || [ "$1" = "--help" ] 
then
	echo 'sub it is tool to collect subdomains and subsubdomains of a specific domain'
	echo ' 						        made by : AXmous'
	echo 'the help menu : '
	echo 'usage : ./subit.sh [option] [domain]'
	echo '-s to search subdomains'
	echo '-ss to search subsubdomains'
	echo '-h or --help to show this help message'
fi
elif [ "$1" = "-s" ] && [ -n $2 ]
then
echo " [**]   Made By AXmous" | ./lolcat -a -d 50
echo " [**]   Searching for subdomains ..... Please , be pacient !!! "
for host in $(cat subdomains-top1million-5000.txt)
do
   host -t A $host.$2 |grep -v "not found" |grep -v "has no A record"
done

elif [ "$1" = "-ss" ] && [ -n $2 ]
then
echo "[**]   Made By AXmous" | ./lolcat -a -d 50
echo "[**]   Searching for subdomains ..... Please , be pacient !!! "
for i in $(cat subdomains-top1million-5000.txt) 
do
   for j in $(cat subdomains-top1million-5000.txt) 
   do
       host -t A $i.$j.$2 |grep -v "not found" |grep -v "has no A record"
   done
done
fi
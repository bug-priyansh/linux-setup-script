#!/bin/bash
WHITE='\033[0;37m' 
RED='\033[0;31m'
Cyan='\033[0;33m'
green='\033[0;92m'


#echo -e "${green}Welcome ${WHITE}to ${RED}France ${Cyan}Hello World"

echo -e "${red} Checking Requirements ${white}"
pkg install arp-scan -y
echo -e "${red} Requirement Fullfilled"

echo -e "scanning wifi ${cyan}"

arp-scan --interface=wlan0 --localnet

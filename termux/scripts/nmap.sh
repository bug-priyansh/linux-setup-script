clear


WHITE='\033[0;37m' 
RED='\033[0;31m'
Cyan='\033[0;33m'
green='\033[0;92m'

echo ""
echo -e "${green}88 ${Cyan}88b ${RED}88 ${Cyan}888888  dP00Yb"
echo -e "${green}88 ${green}88Yb8${RED}8 88__   ${RED}dP    Yb"
echo -e "${RED}88 ${green}88 Y88 ${green}88~~   ${RED}Yb    dP"
echo -e "${RED}88 ${RED}88  ${green}Y8 88      ${green}YboodP "
#sleep 40.0

#echo "Network Scanning Using Nmap (argessive scan)"

#read -p "Enter your input: " input
#echo "enter the ip address : $input"

# read -p "enter the options :" options

#nmap $input $options -oG  output.gnmap
#nmap $input -A -oG  output.gnmap

#clear

#cat output.gnmap


# Check if IP address and port range are provided as arguments
#if [ "$#" -ne 3 ]; then
#    echo "Usage: $0 <IP address> <start port> <end port>"
#    exit 1
#fi

# Assign arguments to variables
#ip_address="$1"
#start_port="$2"
#end_port="$3"

# Loop through the port range and check if each port is open
#for ((port = start_port; port <= end_port; port++)); do
#    (echo >/dev/tcp/"$ip_address"/"$port") >/dev/null 2>&1 && \
#        echo "Port $port on $ip_address is open"
#done


echo " Installing nmap"
sudo apt install namp -y
clear


echo ""
echo -e "${WHITE}88 88b 88 888888  dP00Yb"
echo -e "${WHITE}88 88Yb88 88__   dP    Yb"
echo -e "${WHITE}88 88 Y88 88~~   Yb    dP"
echo -e "${WHITE}88 88  Y8 88      YboodP"
echo ""

echo "Network Scanning on single target"

echo -e "${green}"

read -p "Enter your input:" input
echo ""


echo -e "${RED}Select the Attack mode ${WHITE}"
echo "1. Normal mode" 
echo "2. Stealth mode" #-sT
echo "3. Aggressive attack" #-A
echo "4. IPv6 attack" #-6
echo "5. Ping scan only" #-sP
echo "6. TCP SYN scan" #-PS
echo "7. TCP ACK scan" #-PA
echo "8. UDP scan" #-PU
echo "9. SCTP Init Ping scan" #-PY
echo "10. ICMP address mask" #-PE
echo "11. ARP scan" #-PR
echo "12. Traceroute" #-traceroute
echo "13. idle zombie scan" #-sl [zombie]
echo "14. spoof mac address attack" #-spoof-mac [MAC|0|vendor]
echo "15. service version detection" #-sV
echo "16. RPC scan" #-sR
echo "17. OS Detection" #-O
echo "18. send bad checksum" #-badsum
echo "19. use a decoy" #-D RND:[number]
echo "20. Force reverse" #-R
echo "21. IP protocol" #-PO
echo "22. manually specify source port" #-source-port [port]
echo "23. manually specify DNS servers" #-dns-servers [servers]
echo "24. Alternavtive Dns Lookup" #-system-dns
echo "25. Attempt to guess an unknown" #-O-osscan-guess
echo "26. MTU" #-mtu[MTU]
echo "27. Personal Modified Attack"

echo -e "${green}"
read -p "enter the attack mode :" option

#nmap $input $option -oG output.gnmap

#clear

#cat output.gnmap

echo "enter the ip address : $input"

echo -e "${Cyan}"

if [ $option -eq 1 ]
then
      echo "1. Normal mode" 
      nmap $input -oG scan_output.gnmap

       
 elif [ $option -eq 2 ]
then
      echo "2. Stealth mode" #-sT
      nmap -sT $input -oG scan_output.gnmap

       
 elif [ $option -eq 3 ]
then
      echo "3. Aggressive attack" #-A
      nmap -A $input -oG scan_output.gnmap


 elif [ $option -eq 4 ]
then
      echo "4. IPv6 attack" #-6
      nmap -6 $input -oG scan_output.gnmap


 elif [ $option -eq 5 ]
then
      echo "5. Ping scan only" #-sP
      nmap -sP $input -oG scan_output.gnmap

 elif [ $option -eq 6 ]
then
    echo "6. TCP SYN scan" #-PS  
    nmap -PS $input -oG scan_output.gnmap


 elif [ $option -eq 7 ]
then
      echo "7. TCP ACK scan" #-PA
      nmap -PA $input -oG scan_output.gnmap

 elif [ $option -eq 8 ]
then
      echo "8. UDP scan" #-PU
      nmap -PU $input -oG scan_output.gnmap


 elif [ $option -eq 9 ]
then
      echo "9. SCTP Init Ping scan" #-PY
      nmap -PY $input -oG scan_output.gnmap


 elif [ $option -eq 10 ]
then
      echo "10. ICMP address mask" #-PE
      nmap -PE $input -oG scan_output.gnmap


 elif [ $option -eq 11 ]
then
      echo "11. ARP scan" #-PR
      nmap -PR $input -oG scan_output.gnmap


 elif [ $option -eq 12 ]
then
      echo "12. Traceroute" #-traceroute
      nmap -traceroute $input -oG scan_output.gnmap


 elif [ $option -eq 13 ]
then
      echo "13. idle zombie scan" #-sl [zombie]
      read -p "Enter zombie: " zombie
      nmap -sl $zombie $input -oG scan_output.gnmap


 elif [ $option -eq 14 ]
then
      echo "14. spoof mac address attack" #-spoof-mac [MAC|0|vendor]
      read -p "Enter MAC or vendor: " spoofmac
      nmap -spoof-mac $spoofmac $input -oG scan_output.gnmap


 elif [ $option -eq 15 ]
then
      echo "15. service version detection" #-sV
      nmap -sV $input -oG scan_output.gnmap


 elif [ $option -eq 16 ]
then
      echo "16. RPC scan" #-sR
      nmap -sR $input -oG scan_output.gnmap


 elif [ $option -eq 17 ]
then
      echo "17. OS Detection" #-O
      nmap -O $input -oG scan_output.gnmap


 elif [ $option -eq 18 ]
then
      echo "18. send bad checksum" #-badsum
      nmap -badsum $input -oG scan_output.gnmap

 elif [ $option -eq 19 ]
then
      echo "19. use a decoy" #-D RND:[number]
      read -p "Enter RND number : " rndnumber
      nmap -d RND $rndnumber$input -oG scan_output.gnmap


 elif [ $option -eq 20 ]
then
      echo "20. Force reverse" #-R
      nmap -R $input -oG scan_output.gnmap


 elif [ $option -eq 21 ]
then
      echo "21. IP protocol" #-PO
      nmap -PO $input -oG scan_output.gnmap


 elif [ $option -eq 22 ]
then
      echo "22. manually specify source port" #-source-port [port]
      read -p "Enter source port: " sourceport 
      nmap -source-port $sourceport $input -oG scan_output.gnmap

 elif [ $option -eq 23 ]
then
      echo "23. manually specify DNS servers" #-dns-servers [servers]
      read -p "Enter DNS Servers: " dnsservers 
      nmap -dns-servers $dnsservers $input -oG scan_output.gnmap


 elif [ $option -eq 24 ]
then
      echo "24. Alternavtive Dns Lookup" #-system-dns
      nmap -system-dns $input -oG scan_output.gnmap

  elif [ $option -eq 25 ]
then
      echo "25. Attempt to guess an unknown" #-O-osscan-guess
      nmap -O-osscan-guess $input -oG scan_output.gnmap

      
  elif [ $option -eq 26 ]
then
      echo "26. MTU" #-mtu[MTU]
      read -p "Enter MTU: " mtunumber
      nmap -mtu $mtunumber $input -oG scan_output.gnmap
      
  elif [ $option -eq 27 ]
then
      echo "27. Personal Modified Attack"
      read -p "Enter Nmap Query: with (-)" query
      nmap $query $input -oG scan_output.gnmap

else
      echo -e "${RED}WORNG INPUT"
fi

sleep 10.0

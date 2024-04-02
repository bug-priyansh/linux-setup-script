#!/bin/bash  


white='\033[0;37m' 
red='\033[0;31m'
cyan='\033[0;33m'
green='\033[0;92m'

echo -e "${white}"

sudo apt update -y 
clear
sudo apt full-upgrade-y
clear
echo -e "${green}"

#---------------------
#Build Essential
sudo apt-get install build-essential
clear

# Neofetch
sudo apt install neofetch
clear

#mysql
sudo apt install -y default-mysql-client
sudo apt install -y default-mysql-server
clear

# htop curl locate autoconf powertop
sudo apt install htop curl locate autoconf powertop
clear

# wget git zip unzip 
sudo apt install wget git curl zip unzip
clear

# postgresql-client postgresql postgresql-contrib
sudo apt install postgresql-client postgresql postgresql-contrib
clear

# redis golang direnv tmux bat ripgrep fzf 
sudo apt install redis golang direnv tmux bat ripgrep fzf
clear

# apt-transport-https gnupg-agent
sudo apt-get -y install apt-transport-https curl gnupg-agent
clear

sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libxml2 libxml2-dev libxslt1-dev ruby-dev libgmp-dev zlib1g-dev
sudo apt-get install -y libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y rename
sudo apt-get install -y xargs

sudo apt-get -y update
sudo apt-get -y upgrade


#install go
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
					sudo tar -xvf go1.13.4.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi



pip install scapy
pip install pycrypto
pip install requests
pip install bs4
pip install beautifulsoup4
pip install scikit-learn
pip install paramiko
pip install tensorflow
pip install PyAutoGUI
pip install python-time
pip install tornado
pip install numpy
pip install Faker
pip install matplotlib
pip install pandas
pip install cryptography
pip install Twisted
pip install yara-python
pip install mechanize
pip install pymetasploit3
pip install pscan
pip install plists
pip install rawsocketpy
pip install pwntools
pip install keras
pip install plotly
pip install torch
pip install Theano


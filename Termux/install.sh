#!/bin/bash

#color scheme
white='\033[0;37m' 
red='\033[0;31m'
cyan='\033[0;33m'
green='\033[0;92m'
#echo -e "${green}Welcome ${WHITE}to ${RED}France ${Cyan}Hello World"
#---------------------------------------------------------------------------
#Clearing all above data
clear
#---------------------------------------------------------------------------
#banner
echo -e ""
echo -e "${green} #########################################################"
echo -e "${white} # ***               termux setup                    *** #"
echo -e "${white} #    Autemated the process of installing and update     #"
echo -e "${white} # ***               Updated: 02/03/24               *** #"
echo -e "${green} #########################################################"
echo -e "${white}"
#banner close

#---------------------------------------------------------------------------




echo "hello"
echo "welcom to installing Termux like a pro 2.0..."

if [ ! -d ~/code ];then
        echo "There is no code directory in home..."
        echo "making directory code..."
        mkdir code 
fi      
echo "directory <<~/code>> Found..."

if [ ! -d ~/tools ];then
        echo "There is no tools directory in home..."
        echo "making directory tools..."
        mkdir tools 
fi      
echo "directory <<~/tools>> Found..."

if [ ! -d ~/totermux-nerd-installerols ];then
        echo "There is no termux-nerd-installer directory in home..."
        echo "making directory termux-nerd-installer..."
        git clone https://github.com/notflawffles/termux-nerd-installer.git
        cd termux-nerd-installer
        make install 
        termux-nerd-installer -i fira-mono
        termux-nerd-installer -i hack
        termux-nerd-installer -i fira-code
fi      
echo "directory <<~/termux-nerd-installer>> Found..."


#Creating Folders
echo -e "${red}Giving Imp Permission to Termux"
    termux-setup-storage

#---------------------------------------------------------------------------
#Updating repos and Termux
echo -e "Updating Packages ${white}"
    sleep 1.0
    pkg install x11-repo
    pkg install root-repo
    pkg update -y
    pkg upgrade -y
    pkg install termux-api
    pkg install termux-exec
    clear
    


#---------------------------------------------------------------------------
#Installing Packages
echo -e "${red} Installing Packages ${white}"

pkg install -y curl
sleep 1.0
clear
#---------
pkg install -y git
sleep 1.0
clear
#---------
pkg install -y wget
sleep 1.0
clear
#---------
pkg install -y zip
sleep 1.0
clear
#---------
pkg install -y unzip
sleep 1.0
clear
#---------
pkg install -y python
sleep 1.0
clear
#---------
pkg install -y python2
sleep 1.0
clear
#---------
pkg install -y python3
sleep 1.0
clear
#---------
pkg install -y pip
sleep 1.0
clear
#---------
pkg install -y nodejs
sleep 1.0
clear
#---------
pkg install -y jq
sleep 1.0
clear
#---------
pkg install -y libxml2-utils
sleep 1.0
clear
#---------
pkg install -y grep
sleep 1.0
clear
#---------
pkg install -y bc
sleep 1.0
clear
#---------
pkg install -y htop
sleep 1.0
clear
#---------
pkg install -y figlet
sleep 1.0
clear
#---------
pkg install -y httping
sleep 1.0
clear
#---------
pkg install -y dnsutils
sleep 1.0
clear
#---------
pkg install -y openssh
sleep 1.0
clear
#---------
pkg install -y ffmpeg
sleep 1.0
clear
#---------
pkg install -y php
sleep 1.0
clear
#---------
pkg install -y nano
sleep 1.0
clear
#---------
pkg install -y zsh
sleep 1.0
clear
#---------
pkg install -y clang
sleep 1.0
clear
#---------
pkg install -y libffi
sleep 1.0
clear
#---------
pkg install -y openssl
sleep 1.0
clear
#---------
pkg install -y screenfetch
sleep 1.0
clear
#---------
pkg install -y neofetch
sleep 1.0
clear
#---------
pkg install -y cowsay
sleep 1.0
clear
#---------
pkg install -y perl
sleep 1.0
clear
#---------
pkg install -y ruby
sleep 1.0
clear
#---------
pkg install -y rust
sleep 1.0
clear
#---------
pkg install -y fakeroot
sleep 1.0
clear
#---------
pkg install -y sshpass
sleep 1.0
clear
#---------
pkg install -y golang
sleep 1.0
clear
#---------
pkg install -y proot
sleep 1.0
clear
#---------
pkg install -y tmux
sleep 1.0
clear
#---------
pkg install -y neovim
sleep 1.0
clear
#---------
pkg install -y postgresql
sleep 1.0
clear
#---------
pkg install -y nginx
sleep 1.0
clear
#---------
pkg install -y apache2
sleep 1.0
clear
#---------
pkg install -y sqlite
sleep 1.0
clear
#---------
pkg install -y sl
sleep 1.0
clear
#---------
pkg install -y fish
sleep 1.0
clear
#---------
pkg install -y cmatrix
sleep 1.0
clear
#---------
pkg install -y coreutils
sleep 1.0
clear
#---------
pkg install -y macchanger
sleep 1.0
clear
#---------
pkg install -y build-essential
sleep 1.0
clear
#---------
pkg install -y binutils
sleep 1.0
clear
#---------
pkg install -y pkg-config
sleep 1.0
clear
#---------
pkg install -y nodejs-lts
sleep 1.0
clear
#---------



#---------------------------------------------------------------------------
#Installing python Modules
echo -e "${red} Installing Python Modules ${white}"
pip install --upgrade pip
clear
pip install --upgrade setuptools
clear
pip install --upgrade httpie
clear
pip install --upgrade requests[socks]
clear
pip install --upgrade requests
clear

#---------------------------------------------------------------------------
#Tools
echo -e "${red} Installing Linux tools ${white}"

pkg install -y nmap
clear
pkg install -y arp-scan
clear
echo -e "${red} Installing Metasploit ${white}"
    sleep 0.5
    pkg update -y
    pkg upgrade -y
    wget https://github.com/gushmazuko/metasploit_in_termux/raw/master/metasploit.sh
    chmod +x metasploit.sh
    clear


#---------------------------------------------------------------------------
#Configuring the Termux
echo -e "${red} Configuring the Termux ${white}"
    pkg up
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    chsh -s zsh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
        echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

echo -e "${red} Starship ${white}"
    pkg install starship

#---------------------------------------------------------------------------
#Tools

#---------------------------------------------------------------------------
#geowifi

cd tools
echo -e "${red} Geowifi ${white}"
    git clone https://github.com/GONZOsint/geowifi.git
    cd geowifi
    python3 -m pip install -r requirements.txt
    cd ..

echo -e "${red} gsec ${white}"
    git clone https://github.com/gotr00t0day/Gsec.git
    cd Gsec
    pip3 install -r requirements.txt
    cd ..

cd ..
echo -e "${red} EveryThing is Finalised ${white}"
    echo -e "${red} be calm the temux is exiting for finalizing the Termux ${white}"
    sleep 3.0
    pkg update
    pkg upgrade
    clear
    echo -e "${red}  restart the termux using logout command ${white}"

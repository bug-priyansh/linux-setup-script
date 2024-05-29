#!/bin/bash

### ---- Mobile File Exposer to Termux ----------------------------------------------------------------------
termux-setup-storage

### ---- FTP Related  Setup ----------------------------------------------------------------------
pkg install busybox termux-services
source $PREFIX/etc/profile.d/start-services.sh
sv-enable ftpd
sv up ftpd
echo "FTP server will run on port 8021 in read-only mode."
echo "sv down ftpd"

pkg install openssh-sftp-server

### ---- Updating and Upgrading Termux ----------------------------------------------------------------------
echo "Updating Termux ..."
pkg update -y
pkg upgrade -y 

### ---- Neccessary Tools ----------------------------------------------------------------------
pkg install -y x11-repo 
pkg install -y root-repo 
pkg install -y termux-api 
pkg install -y termux-exec 
pkg install -y curl 
pkg install -y git 
pkg install -y wget 
pkg install -y zip 
pkg install -y unzip 
pkg install -y python 
pkg install -y python2 
pkg install -y python3 
pkg install -y pip 
pkg install -y nodejs 
pkg install -y jq 
pkg install -y libxml2-utils 
pkg install -y grep 
pkg install -y bc 
pkg install -y htop 
pkg install -y figlet 
pkg install -y httping 
pkg install -y dnsutils 
pkg install -y openssh 
pkg install -y ffmpeg 
pkg install -y php 
pkg install -y nano 
pkg install -y zsh 
pkg install -y clang 
pkg install -y libffi 
pkg install -y openssl 
pkg install -y screenfetch 
pkg install -y neofetch 
pkg install -y cowsay
pkg install -y perl 
pkg install -y ruby 
pkg install -y rust 
pkg install -y fakeroot 
pkg install -y sshpass 
pkg install -y golang 
pkg install -y proot 
pkg install -y tmux 
pkg install -y neovim 
pkg install -y postgresql 
pkg install -y nginx 
pkg install -y apache2 
pkg install -y sqlite 
pkg install -y sl 
pkg install -y fish 
pkg install -y cmatrix 
pkg install -y coreutils 
pkg install -y macchanger 
pkg install -y build-essential 
pkg install -y binutils 
pkg install -y pkg-config 
pkg install -y nodejs-lts 
pkg install -y locate 
pkg install -y autoconf 
pkg install -y powertop 
pkg install -y postgresql-client 
pkg install -y postgresql-contrib 
pkg install -y redis 
pkg install -y direnv 
pkg install -y bat 
pkg install -y ripgrep 
pkg install -y fzf 
pkg install -y apt-transport-https 
pkg install -y gnupg-agent 
pkg install -y libcurl4-openssl-dev 
pkg install -y ruby-full 
pkg install -y libxml2-dev 
pkg install -y libxml2 
pkg install -y libxslt1-dev 
pkg install -y ruby-dev 
pkg install -y libgmp-dev 
pkg install -y zlib1g-dev 
pkg install -y libssl-dev 
pkg install -y libffi-dev 
pkg install -y python-dev 
pkg install -y python-setuptools 
pkg install -y libldns-dev 
pkg install -y python3-pip 
pkg install -y python-pip 
pkg install -y python-dnspython 
pkg install -y rename 
pkg install -y xargs 
pkg install -y default-mysql-client 
pkg install -y default-mysql-server


### GO
if [[ -z "$GOPATH" ]];then
    echo "It looks like go is not installed, would you like to install it now"
    PS3="Please select an option : "
    choices=("yes" "no")
    select choice in "${choices[@]}"; do
            case $choice in
                    yes)

                        echo "Installing Golang"
                        wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
                        tar -xvf go1.13.4.linux-amd64.tar.gz
                        mv go /usr/local
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

### ---- Updating and Upgrading Termux ----------------------------------------------------------------------
pkg update -y 
clear
pkg full-upgrade-y
clear

### ---- Installing nerd Fonts ----------------------------------------------------------------------
if [ ! -d ~/totermux-nerd-installerols ];then
        echo "There is no termux-nerd-installer directory in home..."
        echo "making directory termux-nerd-installer..."
        git clone https://github.com/notflawffles/termux-nerd-installer.git
        cd termux-nerd-installer
        make install 
fi      
echo "directory <<~/termux-nerd-installer>> Found..."

### ---- Installing Python Modules----------------------------------------------------------------------
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

### Module Installing 
module=("scapy" "pycrypto" "requests" "bs4" "beautifulsoup4" "scikit-learn" "paramiko" "tensorflow" "PyAutoGUI" "python-time" "tornado" "numpy" "Faker" "matplotlib" "pandas" "cryptography" "yara-python" "Twisted" "mechanize" "pymetasploit3" "pscan" "plists" "rawsocketpy" "pwntools" "keras" "plotly" "torch" "Theano")

echo "Updating Python ..."
pkg install -y python3

# Install each module in the list
for module in "${module[@]}"; do
    if ! command -v "$module" &>/dev/null; then
        echo "Installing $module..."
        pip install "$module"
        clear
        echo "$module installed successfully."
    else
        echo "$module is already installed."
        clear
    fi
done

echo "All python module have been installed."
clear

### ---- Linux Tools----------------------------------------------------------------------
### Metasploit
echo -e "${red} Installing Metasploit ${white}"
    sleep 0.5
    pkg update -y
    pkg upgrade -y
    wget https://github.com/gushmazuko/metasploit_in_termux/raw/master/metasploit.sh
    chmod +x metasploit.sh
    clear

ltools=("nmap" "recon-ng" "wireshark" "shodan" "theharvester" "dnsenum" "maltego" "arp-scan"
       "nessus" "openvas" "nikto" "zaproxy" "exploitdb" "sqlmap" "burpsuite" "hydra" "beef"
       "john" "hashcat" "aircrack-ng" "reaver" "wifite" "owtf" "skipfish" "w3af"
       "setoolkit" "browser-exploitation-framework" "king-phisher" "powersploit" "empire" "pupy" "covenant"
       "autopsy" "volatility" "sleuthkit" "ghiro" "wireshark" "aircrack-ng" "kismet" "wifite"
       "ida-pro" "ghidra" "radare2" "ollydbg" "steghide" "outguess" "openstego"
       "wireshark" "tcpdump" "tshark" "burpsuite" "zaproxy" "charles-proxy"
       "keepassx" "bitwarden" "openssl" "gnupg")

# Update and upgrade the package manager
echo "Updating package manager..."
pkg update -y 
pkg upgrade -y

# Install each tool in the list
for ltools in "${ltools[@]}"; do
    if ! command -v "$ltools" &>/dev/null; then
        echo "Installing $ltools..."
        pkg install -y "$ltools"
        echo "$ltools installed successfully."
    else
        echo "$ltools is already installed."
    fi
done

echo "All tools have been installed."

### ---- Configuring the Termux ----------------------------------------------------------------------
### ohmyzsh
echo -e "${red} Configuring the Termux ${white}"
pkg up
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
### Starship
curl -sS https://starship.rs/install.sh | sh

### ---- Custom Linux Tools----------------------------------------------------------------------
mkdir ~/Tools
cd ~/Tools
### Geowifi
echo "Geowifi"
    git clone https://github.com/GONZOsint/geowifi.git
    cd ~/Tools/geowifi
    python3 -m pip install -r requirements.txt
    cd ~/Tools
###Gsec
echo "Gsec"
    git clone https://github.com/gotr00t0day/Gsec.git
    cd ~/Tools/Gsec
    pip3 install -r requirements.txt
    cd ~/Tools


echo "EveryThing is Finalised"
    echo "be calm the termux is exiting for finalizing the Termux"
    sleep 3.0
    pkg update
    pkg upgrade
    clear
    echo "restart the termux using logout command"

#!/bin/bash

echo "#########################################################"
echo "# ***               termux setup                    *** #"
echo "#    Autemated the process of installing and update     #"
echo "# ***               Updated: 28/01/24               *** #"
echo "#########################################################"

echo "Giving Imp Permission to Termux"
    termux-setup-storage
echo "Creating Directories"
    sleep 1.0
    cd ~
    mkdir code && mkdir tools
    clear

echo "Updating Packages"
    sleep 1.0
    pkg install x11-repo
    pkg install root-repo
    pkg update -y
    pkg upgrade -y
    pkg install termux-api
    pkg install termux-exec
    clear

echo "Installing Packages"
    packages=(
        curl
        git
        wget
        zip
        unzip
        python
        python2
        python3
        pip
        nodejs
        jq
        libxml2-utils
        grep
        bc
        htop
        figlet
        httping
        dnsutils
        openssh
        ffmpeg
        php
        nano
        zsh
        clang
        libffi
        openssl
        screenfetch
        neofetch
        cowsay
        perl
        ruby
        rust
        fakeroot
        sshpass
        golang
        proot
        tmux
        neovim
        postgresql
        nginx
        apache2
        sqlite
        sl
        fish
        cmatrix
        coreutils
        macchanger
        build-essential
        binutils
        pkg-config
        nodejs-lts
    )
    # Loop through the list of packages and install them
    for package in "${packages[@]}"; do
        pkg install -y "$package"
        clear
        sleep 1.0
    done
    
    echo "All packages have been installed."
    clear

echo "Installing Composers"
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/data/data/com.termux/files/usr/bin --filename=composer


echo "Installing Python Modules"
    modules=(
        pip
        setuptools
        httpie
        requests[socks]
        requests
    )
    # Loop through the list of packages and install them
    for package in "${modules[@]}"; do
        pip install --upgrade "$modules"
        clear
        sleep 1.0
    done


echo "Installing Linux tools"
    htools=(
        nmap
        arp-scan
    )
    # Loop through the list of packages and install them
    for package in "${htools[@]}"; do
        pkg install -y "$htools"
        clear
        sleep 1.0
    done


    echo "Installing Metasploit"
        sleep 0.5
        pkg update -y
        pkg upgrade -y
        wget https://github.com/gushmazuko/metasploit_in_termux/raw/master/metasploit.sh
        chmod +x metasploit.sh
        clear


    echo "Installing Social engineering toolkit"
        cd tools
        sleep 0.5
        pkg update -y
        pkg upgrade -y
        git clone https://github.com/trustedsec/social-engineer-toolkit.git
        cd social-engineer-toolkit
        pip3 install -r requirements.txt
        python3 setup.py 
        cd ..
        cd ..
        clear

echo "Configuring the Termux"
    pkg up
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    chsh -s zsh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
        echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
    nano .zshrc
    #ZSH_THEME="agnoster"
    git clone --depth=1 https://github.com/mayTermux/myTermux.git
    cd myTermux
    ./install.sh
    cd ..

echo "EveryThing is Finalised"
    echo "be calm the temux is exiting for finalizing the Termux"
    echo " restart the termux using exit command"
    sleep 3.0
    pkg update
    pkg upgrade
    logout

#!/bin/bash  

sudo apt update -y 
sudo apt full-upgrade-y
# ---- DIRECT REPO DOWNLOAD ---- #
    # BRAVE
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt -y update
    sudo apt install -y brave-browser
    clear
    # SUBLIME TEXT
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt-get -y update
    sudo apt-get install -y sublime-text
    clear
    # VIRTUAL BOX
    curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox_2016.gpg
    curl -fsSL https://www.virtualbox.org/download/oracle_vbox.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox.gpg
    echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
    sudo apt update -y
    sudo apt install -y dkms
    sudo apt install -y virtualbox virtualbox-ext-pack
    clear
    # DOCKER
    sudo apt install -y docker.io
    clear
    # NGROK
    curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list 
    sudo apt update
    sudo apt install -y ngrok
    clear
    # NVIDIA DRIVER
    sudo apt install -y nvidia-detect nvidia-drivers nvidia-cudo-toolkit
    clear
    # VLC
    sudo apt install -y vlc
    clear
    # SPOTIFY
    curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get -y update && sudo apt-get install -y spotify-client
    clear
# ---- DEBFILES ---- #
    # GOOGLE CHROME
    sudo apt install -y ./debfiles/google-chrome-stable_current_amd64.deb
    clear
    # TERMINUS
    sudo apt install -y ./debfiles/Termius.deb
    clear
    # PACKET TRACER
    sudo apt install -y ./debfiles/CiscoPacketTracer_821_Ubuntu_64bit.deb
    clear
    # CODE
    sudo apt install -y ./debfiles/code_1.88.1-1712771838_amd64.deb
    clear
    # ENVYCONTROL
    sudo apt install -y ./debfiles/python3-envycontrol_3.4.0-1_all.deb
    clear
    # OBSIDIAN
    sudo apt install -y ./debfiles/obsidian_1.5.12_amd64.deb
    clear
# ---- FLATHUB ---- #
    # MOTRIX
    flatpak install flathub net.agalwood.Motrix    
    clear
    # LIBERE OFFICE
    flatpak install flathub org.libreoffice.LibreOffice
    clear
    # HTTPTOOLKIT
    # SCRIPTKIT
    # BOTTELS
    flatpak install flathub com.usebottles.bottles
    clear
    # GREEN-WITH-ENVY
    flatpak install flathub com.leinardi.gwe
    clear
    # DISCORD
    flatpak install flathub com.discordapp.Discord
    clear
    # POSTMAN
    flatpak install flathub com.getpostman.Postman
    clear
    # BOXES
    flatpak install flathub org.gnome.Boxes
    clear
    # PODMAN
    flatpak install flathub io.podman_desktop.PodmanDesktop
    clear
    # RYTHM-BOX
    flatpak install flathub org.gnome.Rhythmbox3
    clear
    # XOURNAL
    flatpak install flathub com.github.xournalpp.xournalpp
    clear
    # TELEGRAM
    flatpak install flathub org.telegram.desktop
    clear
    # BEEKEEPER-STUDIO
    flatpak install flathub io.beekeeperstudio.Studio
    clear
    # BITWARDEN
    flatpak install flathub com.bitwarden.desktop
    clear
    # ANDROID-STUDIO
    flatpak install flathub com.google.AndroidStudio
    clear
    # SIGNAL
    flatpak install flathub org.signal.Signal
    clear
    # GEDDIT
    flatpak install flathub org.gnome.gedit
    clear
    # Ttpak install flathub com.todoist.Todoist
    clear
    # OBS-STUDIO
    flatpak install flathub com.obsproject.Studio
    clear
    # GIMP
    flatpak install flathub org.gimp.GIMP
    clear
    # FIGMA
    flatpak install flathub io.github.Figma_Linux.figma_linux
    clear
    # HANDBRAKE
    flatpak install flathub fr.handbrake.ghb
    clear
    # ZOOM
    flatpak install flathub us.zoom.Zoom
    clear
    # ANYDESK
    flatpak install flathub com.anydesk.Anydesk
    clear
    # SLACK
    flatpak install flathub com.slack.Slack
    clear
    # FLATSEAL
    flatpak install flathub com.github.tchx84.Flatseal
    clear
    # JELLYFIN
    flatpak install flathub com.github.iwalton3.jellyfin-media-player
    clear
    # FILEZILLA
    flatpak install flathub org.filezillaproject.Filezilla
    clear
    # TOR
    flatpak install flathub com.github.micahflee.torbrowser-launcher
    clear
    # UNITY
    flatpak install flathub com.unity.UnityHub
    clear
    # HEADLAMP
    flatpak install flathub io.kinvolk.Headlamp
    clearODOIST
    flatpak install flathub com.todoist.Todoist
    clear
    # OBS-STUDIO
    flatpak install flathub com.obsproject.Studio
    clear
    # GIMP
    flatpak install flathub org.gimp.GIMP
    clear
    # FIGMA
    flatpak install flathub io.github.Figma_Linux.figma_linux
    clear
    # HANDBRAKE
    flatpak install flathub fr.handbrake.ghb
    clear
    # ZOOM
    flatpak install flathub us.zoom.Zoom
    clear
    # ANYDESK
    flatpak install flathub com.anydesk.Anydesk
    clear
    # SLACK
    flatpak install flathub com.slack.Slack
    clear
    # FLATSEAL
    flatpak install flathub com.github.tchx84.Flatseal
    clear
    # JELLYFIN
    flatpak install flathub com.github.iwalton3.jellyfin-media-player
    clear
    # FILEZILLA
    flatpak install flathub org.filezillaproject.Filezilla
    clear
    # TOR
    flatpak install flathub com.github.micahflee.torbrowser-launcher
    clear
    # UNITY
    flatpak install flathub com.unity.UnityHub
    clear
    # HEADLAMP
    flatpak install flathub io.kinvolk.Headlamp
    clear
# ---- OTHER APPS ---- #
    # TIMESHIFT
    sudo apt install -y timeshift
    clear
    # SCRUTINY
    # COOLERCONTROL
    # STACER
    sudo apt install -y stacer
    clear

# ---- TOOLS ---- #
    TOOLS=("build-essential" "neofetch" "default-mysql-client" "default-mysql-server" "htop" "curl" "locate"
        "autoconf" "powertop" "wget" "git" "curl" "zip" "unzip" "postgresql-client" "postgresql"
        "postgresql-contrib" "redis" "golang" "direnv" "tmux" "bat" "ripgrep" "fzf"
        "apt-transport-https" "gnupg-agent" "libcurl4-openssl-dev" "ruby-full" "jq" "libxml2" "libxml2-dev"
        "libxslt1-dev" "ruby-dev" "libgmp-dev" "zlib1g-dev" "libssl-dev" "libffi-dev" "python-dev" "python-setuptools"
        "libldns-dev" "python3-pip" "python-pip" "python-dnspython" "rename" "xargs")

    # Update and upgrade the package manager
    echo "Updating package manager..."
    sudo apt-get update -y
    sudo apt-get upgrade -y

    # Install each tool in the list
    for tool in "${TOOLS[@]}"; do
        if ! command -v "$tool" &>/dev/null; then
            echo "Installing $tool..."
            sudo apt-get install -y "$tool"
            clear
            echo "$tool installed successfully."
        else
            echo "$tool is already installed."
            clear
        fi
    done

    echo "All tools have been installed."
    clear

# ---- INSTALL GO ---- #
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

# ---- PYTHON MODULES ---- #
    module=("scapy" "pycrypto" "requests" "bs4" "beautifulsoup4" "scikit-learn" "paramiko"
        "tensorflow" "PyAutoGUI" "python-time" "tornado" "numpy" "Faker" "matplotlib" "pandas" "cryptography"
        "yara-python" "Twisted" "mechanize" "pymetasploit3" "pscan" "plists" "rawsocketpy" "pwntools"
        "keras" "plotly" "torch" "Theano" "jq" "libxml2" "libxml2-dev"
        "libxslt1-dev" "ruby-dev" "libgmp-dev" "zlib1g-dev" "libssl-dev" "libffi-dev" "python-dev" "python-setuptools"
        "libldns-dev" "python3-pip" "python-pip" "python-dnspython" "rename" "xargs")

    echo "Updating Python ..."
    sudo apt-get install -y python3

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

# ---- ENABLING SERVICES ---- #
    sudo systemctl enable mysql
    sudo systemctl enable bluetooth
    sudo service bluetooth start
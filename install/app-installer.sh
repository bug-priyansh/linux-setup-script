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
#using repos
echo -e "${white}"

    # stacer
    #sudo apt install stacer
    #clear

    # Brave
    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
    sudo apt update
    sudo apt install brave-browser
    clear

    # Sublime Text
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
    echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
    sudo apt-get update
    sudo apt-get install sublime-text
    clear

    # Virtual Box
    curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox_2016.gpg
    curl -fsSL https://www.virtualbox.org/download/oracle_vbox.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox.gpg
    echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
    sudo apt update -y
    sudo apt install -y dkms
    sudo apt install -y virtualbox virtualbox-ext-pack
    clear

    # Docker
    sudo apt install docker.io
    clear

    # Ngrok
    curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list 
    sudo apt update
    sudo apt install ngrok
    clear

    # Nvidia Driver
    sudo apt install -y nvidia-detect nvidia-drivers nvidia-cudo-toolkit
    clear

    # VLC
    sudo apt install vlc
    clear
    
    # Spotify
    curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get update && sudo apt-get install spotify-client

#---------------------
#debfiles
    cd debfiles

    #google chrome
    sudo apt install ./google-chrome-stable_current_amd64.deb
    clear
    
    #termius
    sudo apt install ./Termius.deb
    clear
    
    #packet tracer
    sudo apt install ./CiscoPacketTracer_821_Ubuntu_64bit.deb
    clear
    
    #code
    sudo apt install ./code_1.87.2-1709912201_amd64.deb
    clear
    
    #python envycontrol
    sudo apt install ./python3-envycontrol_3.3.1-1_all.deb
    clear
    
    #obsidian
    sudo apt install ./obsidian_1.5.11_amd64.deb
    clear
    


    cd..


#---------------------
#Flathub

echo -e "${cyan}" 
    # TickTick

    # download manager - motrix
    flatpak install flathub net.agalwood.Motrix    
    clear

    # Libere office
    flatpak install flathub org.libreoffice.LibreOffice
    clear

    # HttpToolkit

    # ScriptKit shortcut for everything

    # Bottles
    flatpak install flathub com.usebottles.bottles
    clear

    # greenwithenvy
    flatpak install flathub com.leinardi.gwe
    clear

    # Discord
    flatpak install flathub com.discordapp.Discord
    clear

    # Postman
    flatpak install flathub com.getpostman.Postman
    clear

    # Boxes
    flatpak install flathub org.gnome.Boxes
    clear

    # Podman
    flatpak install flathub io.podman_desktop.PodmanDesktop
    clear

    # Rhythm Box
    flatpak install flathub org.gnome.Rhythmbox3
    clear

    # Xournal
    flatpak install flathub com.github.xournalpp.xournalpp
    clear

    # Telegram
    flatpak install flathub org.telegram.desktop
    clear

    # Beekeeper Studio
    flatpak install flathub io.beekeeperstudio.Studio
    clear

    # Bitwarden
    flatpak install flathub com.bitwarden.desktop
    clear

    # Android Studio
    flatpak install flathub com.google.AndroidStudio
    clear

    # Signal
    flatpak install flathub org.signal.Signal
    clear

    # geddit
    flatpak install flathub org.gnome.gedit
    clear

    # Todoist
    flatpak install flathub com.todoist.Todoist
    clear

    # OBS-Studio
    flatpak install flathub com.obsproject.Studio
    clear

    # Gimp
    flatpak install flathub org.gimp.GIMP
    clear

    # figma
    flatpak install flathub io.github.Figma_Linux.figma_linux
    clear

    # HandBrake
    flatpak install flathub fr.handbrake.ghb
    clear

    # Zoom
    flatpak install flathub us.zoom.Zoom
    clear

    # Anydesk
    flatpak install flathub com.anydesk.Anydesk
    clear

    #Slack
    flatpak install flathub com.slack.Slack
    clear

    #Flatseal
    flatpak install flathub com.github.tchx84.Flatseal
    clear

#---------------------

#Don'tKnow
    # timeshift
    sudo apt install -y timeshift
    clear

    # scrutiny

    # coolercontrol

    #headlamp
    #flatpak install flathub io.kinvolk.Headlamp
    #clear

    #filezilla
    flatpak install flathub org.filezillaproject.Filezilla
    clear

    #tor
    flatpak install flathub com.github.micahflee.torbrowser-launcher
    clear

    #unity
    #flatpak install flathub com.unity.UnityHub
    #clear

    #jellyfin
    flatpak install flathub com.github.iwalton3.jellyfin-media-player
    clear



#updating services
echo -e "${red}"
    sudo systemctl enable mysql
    sudo systemctl enable bluetooth
    sudo service bluetooth start
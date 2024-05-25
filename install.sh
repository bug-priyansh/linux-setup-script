# !/bin/bash  

### ---- Updating and Upgrading ----------------------------------------------------------------------
sudo apt -y update
sudo apt -y full-upgrade
sudo apt install -y neofetch
neofetch 
clear

### ----  Installing Apps -----------------------------------
### Brave
  echo "Installing Brave..."
  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
  sudo apt -y update
  sudo apt install -y brave-browser
  clear
  echo "Brave installed successfully."

### Sublime text
  echo "Installing Sublime Text..."
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
  sudo apt-get -y update
  sudo apt-get install -y sublime-text
  clear
  echo "Sublime Text installed successfully."

### Virtual Box
  echo "Installing Virtual Box..."
  curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox_2016.gpg
  curl -fsSL https://www.virtualbox.org/download/oracle_vbox.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox.gpg
  echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bullseye contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
  sudo apt update -y
  sudo apt install -y dkms
  sudo apt install -y virtualbox virtualbox-ext-pack
  echo "Virtual Box installed successfully."
  clear

### Docker
  echo "Installing Docker..."
  sudo apt install -y docker.io
  clear
  echo "Docker installed successfully."

### Ngrok
  echo "Installing Ngrok..."
  curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list 
  sudo apt update
  sudo apt install -y ngrok
  clear
  echo "Ngrok installed successfully."

### Nvidia Driver
  echo "Installing Nvidia Driver..."
  sudo apt install -y nvidia-detect nvidia-drivers nvidia-cudo-toolkit
  clear
  echo "Nvidia Driver installed successfully."

### Vlc
  echo "Installing Vlc..."
  sudo apt install -y vlc
  clear
  echo "Vlc installed successfully."

### Spotify
  echo "Installing Spotify..."
  curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
  echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt-get -y update && sudo apt-get install -y spotify-client
  clear
  echo "Spotify installed successfully."

### Timeshift
  echo "Installing Timeshift..."
  sudo apt install -y timeshift
  clear
  echo "Timeshift installed successfully."

### Google Chrome 
  echo "Installing Google Chrome..."
  sudo apt install ./debfiles/google* 
  clear
  echo "Google Chrome installed successfully."
### Terinus
  echo "Installing Terinus..."
  sudo apt install ./debfiles/Terminus*
  clear
  echo "Terinus installed successfully."
### Packet Tracer
  echo "Installing Packet Tracer..."
  sudo apt install ./debfiles/pack*
  clear
  echo "Packet Trace installed successfully."
### Code
  echo "Installing Code..."
  sudo apt install ./debfiles/code*
  clear
  echo "Code installed successfully."
### Envycontrol
  echo "Installing Envycontrol..."
  sudo apt install ./debfiles/python3-envycontrol_3.4.0-1_all.deb
  clear
  echo "Envycontrol installed successfully."
### Obsidian
  echo "Installing Obsidian..."
  sudo apt install ./debfiles/obsidian*
  clear
  echo "Obsidian installed successfully."


### Libere Office
flatpak install flathub org.libreoffice.LibreOffice
clear
### Wps Office
flatpak install flathub com.wps.Office
clear
### Audacity
flatpak install flathub org.audacityteam.Audacity
clear
### Eye of Gnome
flatpak install flathub org.gnome.eog
clear
### Blender
flatpak install flathub org.blender.Blender
clear
### Discord
flatpak install flathub com.discordapp.Discord
clear
### Postman
flatpak install flathub com.getpostman.Postman
clear
### Boxes
flatpak install flathub com.getpostman.Postman
clear
### Podman
flatpak install flathub io.podman_desktop.PodmanDesktop
clear
### Rythmbox
flatpak install flathub org.gnome.Rhythmbox3
clear
### Telegram
flatpak install flathub org.telegram.desktop
clear
### Beekeeper studio
flatpak install flathub io.beekeeperstudio.Studio
clear
### Bitwarden
flatpak install flathub com.bitwarden.desktop
clear
### Android Studio
flatpak install flathub com.google.AndroidStudio
clear
### Signal
flatpak install flathub org.signal.Signal
clear
### Todoist
flatpak install flathub com.todoist.Todoist
clear
### Obs studio
flatpak install flathub com.obsproject.Studio
clear
### Gimp
flatpak install flathub org.gimp.GIMP
clear
### Handbrake
flatpak install flathub fr.handbrake.ghb
clear
### Zoom
flatpak install flathub us.zoom.Zoom
clear
### Anydesk
flatpak install flathub com.anydesk.Anydesk
clear
### Slack
flatpak install flathub com.slack.Slack
clear
### Figma
flatpak install flathub io.github.Figma_Linux.figma_linux
clear
### Filezilla
flatpak install flathub org.filezillaproject.Filezilla
clear
### Tor
flatpak install flathub org.torproject.torbrowser-launcher
clear
### Unity
flatpak install flathub com.unity.UnityHub
clear
### Headlamp
flatpak install flathub io.kinvolk.Headlamp
clear


### ---- Depedencies -----------------------------------
    TOOLS=("build-essential" "neofetch" "default-mysql-client" "default-mysql-server" "htop" "curl" "locate"
        "autoconf" "powertop" "wget" "git" "curl" "zip" "unzip" "postgresql-client" "postgresql"
        "postgresql-contrib" "redis" "golang" "direnv" "tmux" "bat" "ripgrep" "fzf"
        "apt-transport-https" "gnupg-agent" "libcurl4-openssl-dev" "ruby-full" "jq" "libxml2" "libxml2-dev"
        "libxslt1-dev" "ruby-dev" "libgmp-dev" "zlib1g-dev" "libssl-dev" "libffi-dev" "python-dev" "python-setuptools"
        "libldns-dev" "python3-pip" "python-pip" "python-dnspython" "rename" "xargs" "dconf-cli" "dconf-editor")

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


### ---- Python modules -----------------------------------

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

### ----  ---------


### ----  ---------

### ---- Linux Tools -----------------------------------
  TOOLS=("nmap" "recon-ng" "wireshark" "shodan" "theharvester" "dnsenum" "maltego"
        "nessus" "openvas" "nikto" "zaproxy" "exploitdb" "sqlmap" "burpsuite" "hydra" "beef"
        "john" "hashcat" "aircrack-ng" "reaver" "wifite" "owtf" "skipfish" "w3af"
        "setoolkit" "browser-exploitation-framework" "king-phisher" "powersploit" "empire" "pupy" "covenant"
        "autopsy" "volatility" "sleuthkit" "ghiro" "wireshark" "aircrack-ng" "kismet" "wifite"
        "ida-pro" "ghidra" "radare2" "ollydbg" "steghide" "outguess" "openstego"
        "wireshark" "tcpdump" "tshark" "burpsuite" "zaproxy" "charles-proxy"
        "keepassx" "bitwarden" "openssl" "gnupg")

  # Update and upgrade the package manager
  echo "Updating package manager..."
  sudo apt-get update -y
  sudo apt-get upgrade -y

  # Install each tool in the list
  for tool in "${TOOLS[@]}"; do
      if ! command -v "$tool" &>/dev/null; then
          echo "Installing $tool..."
          sudo apt-get install -y "$tool"
          echo "$tool installed successfully."
          clear
      else
          echo "$tool is already installed."
          clear
      fi
  done

  echo "All tools have been installed."
  clear

### ---- zsh -----------------------------------
  ### Themes
    ## Aura Theme
      mv bin/aura-theme.dconf ~/aura-theme.dconf
      dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/aura-theme.dconf
    ## Dracula
      git clone https://github.com/dracula/gnome-terminal
      cd gnome-terminal
      ./install.sh
      cd ..
      mkdir bin/dracula
      mv gnome-terminal bin/dracula/
  ### ohmyzsh
    git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
    cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  ### powerlevel10k 
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
  ### starship
    curl -sS https://starship.rs/install.sh | sh
    mv bin/starship.toml ~/.config/starship.toml
  ### Neofetch
    mv ~/.config/neofetch/config.conf ~/.config/neofetch/config.conf.bak 
    mv bin/config.conf ~/.config/neofetch/config.conf
  ### zshrc
    mv bin/zshrc ~/.zshrc
  ### bashrc
    mv bin/bashrc ~/.bashrc
  ### Repository
    sudo mv /etc/apt/sources.list /etc/apt/sources.list.orginal.bak
    sudo mv bin/sources.list /etc/apt/sources.list

### ---- Apps -----------------------------------
  ### Sublime Text
    mv bin/aura-theme-sublime-text.tmTheme ~/.config/sublime-text/Packages/aura-theme-sublime-text.tmTheme
    mv bin/SUBLIME-Dracula.tmTheme ~/.config/sublime-text/Packages/SUBLIME-Dracula.tmTheme

  ### Vscode
    mv bin/settings.json ~/.config/Code/User/settings.json

  # SublimeTextPackges= ~/.config/sublime-text/Packages
  # neofetch= ~/.config/neofetch
  # vscodesettings= ~/.config/Code/User/settings.json
 
### ---- Enabling Services ---------
  sudo systemctl enable mysql
  sudo systemctl enable bluetooth
  sudo service bluetooth start

### Creating user in mysql
### Username: binary | Password: user
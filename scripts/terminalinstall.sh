#!/bin/bash 

# ---- THEMES ---- #
    # AURA THEME
        cd ..
        mv assets/aura-theme.dconf ~/
        dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/aura-theme.dconf
        cd scripts
        sudo apt-get install dconf-cli
        sudo apt install dconf-editor
        cd ..
    # DRACULA THEME
        cd assets
        git clone https://github.com/dracula/gnome-terminal
        cd gnome-terminal
        ./install.sh
        cd ..
        cd ..
        cd scripts
# ---- OHMYZSH ---- #
    # OHMYZSH
        git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
        cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
    # POWERLEVEL10K
        git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
# ---- STARSHIP ---- #
    if [ ! -d ~/.config ]
    then

        mkdir ~/.config
    fi
    cd ..
    mv assets/starship.toml ~/.config/
    cd scripts

# ---- ZSHRC ---- #

    echo ' ' >> ~/.zshrc
    echo '# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh. ' >> ~/.zshrc
    echo '[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh ' >> ~/.zshrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" ' >> ~/.zshrc
    echo ' ' >> ~/.zshrc
    echo '# find out which distribution we are running on ' >> ~/.zshrc
    echo 'LFILE="/etc/*-release" ' >> ~/.zshrc
    echo 'MFILE="/System/Library/CoreServices/SystemVersion.plist" ' >> ~/.zshrc
    echo 'if [[ -f $LFILE ]]; then ' >> ~/.zshrc
    echo '  _distro=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }') ' >> ~/.zshrc
    echo 'elif [[ -f $MFILE ]]; then ' >> ~/.zshrc
    echo '  _distro="macos" ' >> ~/.zshrc
    echo ' ' >> ~/.zshrc
    echo '  # on mac os use the systemprofiler to determine the current model ' >> ~/.zshrc
    echo '  _device=$(system_profiler SPHardwareDataType | awk '/Model Name/ {print $3,$4,$5,$6,$7}') ' >> ~/.zshrc
    echo ' ' >> ~/.zshrc
    echo '  case $_device in ' >> ~/.zshrc
    echo '    *MacBook*)     DEVICE="";; ' >> ~/.zshrc
    echo '    *mini*)        DEVICE="󰇄";; ' >> ~/.zshrc
    echo '    *)             DEVICE="";; ' >> ~/.zshrc
    echo '  esac ' >> ~/.zshrc
    echo 'fi ' >> ~/.zshrc
    echo ' ' >> ~/.zshrc
    echo '#colormap ' >> ~/.zshrc
    echo 'function colormap() { ' >> ~/.zshrc
    echo '  for i in {0..255};  do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f"  ${${(M)$((i%6)):#3}:+$'\n'};  done ' >> ~/.zshrc
    echo '} ' >> ~/.zshrc
    echo ' ' >> ~/.zshrc

    echo '# starship ' >> ~/.zshrc
    echo '#colorscript -e random # crunch ' >> ~/.zshrc
    echo ' ' >> ~/.zshrc
    echo '# set an icon based on the distro ' >> ~/.zshrc
    echo '# make sure your font is compatible with https://github.com/lukas-w/font-logos ' >> ~/.zshrc
    echo 'case $_distro in ' >> ~/.zshrc
    echo '    *kali*)                  ICON="ﴣ";; ' >> ~/.zshrc
    echo '    *arch*)                  ICON="";; ' >> ~/.zshrc
    echo '    *debian*)                ICON="";; ' >> ~/.zshrc
    echo '    *raspbian*)              ICON="";; ' >> ~/.zshrc
    echo '    *ubuntu*)                ICON="";; ' >> ~/.zshrc
    echo '    *elementary*)            ICON="";; ' >> ~/.zshrc
    echo '    *fedora*)                ICON="";; ' >> ~/.zshrc
    echo '    *coreos*)                ICON="";; ' >> ~/.zshrc
    echo '    *gentoo*)                ICON="";; ' >> ~/.zshrc
    echo '    *mageia*)                ICON="";; ' >> ~/.zshrc
    echo '    *centos*)                ICON="";; ' >> ~/.zshrc
    echo '    *opensuse*|*tumbleweed*) ICON="";; ' >> ~/.zshrc
    echo '    *sabayon*)               ICON="";; ' >> ~/.zshrc
    echo '    *slackware*)             ICON="";; ' >> ~/.zshrc
    echo '    *linuxmint*)             ICON="";; ' >> ~/.zshrc
    echo '    *alpine*)                ICON="";; ' >> ~/.zshrc
    echo '    *aosc*)                  ICON="";; ' >> ~/.zshrc
    echo '    *nixos*)                 ICON="";; ' >> ~/.zshrc
    echo '    *devuan*)                ICON="";; ' >> ~/.zshrc
    echo '    *manjaro*)               ICON="";; ' >> ~/.zshrc
    echo '    *rhel*)                  ICON="";; ' >> ~/.zshrc
    echo '    *macos*)                 ICON="";; ' >> ~/.zshrc
    echo '    *)                       ICON="";; ' >> ~/.zshrc
    echo 'esac ' >> ~/.zshrc
    echo ' ' >> ~/.zshrc

    echo 'export STARSHIP_DISTRO="$ICON" ' >> ~/.zshrc
    echo 'export STARSHIP_DEVICE="$DEVICE" ' >> ~/.zshrc
    echo ' ' >> ~/.zshrc

    echo 'eval "$(starship init zsh)" ' >> ~/.zshrc
    echo ' ' >> ~/.zshrc


# ---- ADDING REPOSITORY ---- #

    mv /etc/apt/sources.list /etc/apt/sources.list.bak
    touch sources.list

    echo '# KALI DEFAULT' >> sources.list
    echo 'deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware' >> sources.list
    echo 'deb-src http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware' >> sources.list
    echo '# DEBAIN' >> sources.list
    echo '#deb http://deb.debian.org/debian/ bullseye main contrib non-free' >> sources.list
    echo 'deb http://ftp.debian.org/debian stable main contrib non-free' >> sources.list
    echo '# PARROT SECURITY' >> sources.list
    echo '#deb http://deb.parrotsec.org/parrot stable main contrib non-free' >> sources.list
    echo '#deb https://deb.parrot.sh/parrot/ rolling main contrib non-free' >> sources.list
    echo '#deb-src https://deb.parrot.sh/parrot/ rolling main contrib non-free' >> sources.list
    echo '#deb https://deb.parrot.sh/parrot/ rolling-security main contrib non-free' >> sources.list
    echo '#deb-src https://deb.parrot.sh/parrot/ rolling-security main contrib non-free' >> sources.list
    echo '# UBUNTU' >> sources.list
    echo '#deb http://us.archive.ubuntu.com/ubuntu/ saucy universe' >> sources.list
    echo '#deb-src http://us.archive.ubuntu.com/ubuntu/ saucy universe ' >> sources.list
    echo '#deb http://us.archive.ubuntu.com/ubuntu/ saucy-updates universe' >> sources.list
    echo '#deb-src http://us.archive.ubuntu.com/ubuntu/ saucy-updates univers' >> sources.list

    mv sources.list /etc/apt/


# ---- NEOFETCH CONFIGURATION ---- #
    cd ..

    if [ ! -d ~/.config/Neofetch ]
    then

        mkdir ~/.config/Neofetch
        sudo apt install -y Neofetch
    fi

    mv ~/.config/neofetch/config.conf ~/.config/neofetch/config.conf.bak

    mv assets/config.conf ~/.config/neofetch/
    cd scripts
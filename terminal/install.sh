#!/bin/bash 
#themes
mv aura-theme.dconf ~/ 
dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < ~/aura-theme.dconf
sudo apt-get install dconf-cli

cd themes
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh
cd ..
cd ..
#--------------------

#ohmyzsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
#--------------------


#zshrc
mv zshrc.sh .zshrc
mv .zshrc ~/
#--------------------

#starship
if [ ! -d ~/.config ]
then

    mkdir ~/.config
fi
mv starship.toml ~/.config/



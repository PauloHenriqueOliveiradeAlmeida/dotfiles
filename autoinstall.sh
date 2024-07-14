#!/bin/bash

sudo pacman -Syu polybar neovim kitty fish rofi picom ly ttf-firacode-nerd code starship neofetch &&

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish &&
omf install https://github.com/dracula/fish &&

sudo systemctl disable lightdm.service &&
sudo systemctl enable ly.service &&

cp ./polybar /home/$USER/.config/ -r &&
cp ./i3 /home/$USER/.config/ -r &&
cp ./nvim /home/$USER/.config/ -r &&
cp ./kitty /home/$USER/.config/ -r &&
cp ./fish /home/$USER/.config/ -r &&
cp ./rofi /home/$USER/.config/ -r &&
cp ./picom/picom.conf /home/$USER/.config/picom.conf -r &&
cp ./omf /home/$USER/.config -r &&
sudo cp ./ly/config.ini /etc/ly -r &&

echo "OK - reboot system now"

#!/usr/bin/bash
echo " ##################################################################"
echo " #############   The Environment Is Ready  ########################"
echo " ##################################################################"
rm -rf ~/.config 2> /dev/null
mkdir -p ~/{.config,.local}
# Move All Dotfiles in $HOME/.local/
mv ../../wayland-dots ~/.local

echo "##############################"
echo "### Link My Dots Config ######"
echo "##############################"
# Pictures
ln -sf ~/.local/wayland-dots/sway-dotfiles/pix ~/
# Git
ln -sf ~/.local/wayland-dots/sway-dotfiles/git/.gitconfig ~/
# bash
ln -sf ~/.local/wayland-dots/sway-dotfiles/bsh/.bashrc ~/
ln -sf ~/.local/wayland-dots/sway-dotfiles/bsh/.bash_profile ~/
ln -sf ~/.local/wayland-dots/sway-dotfiles/bsh/.npmrc ~/
# Prompt
ln -sf ~/.local/wayland-dots/sway-dotfiles/prompt/starship.toml ~/.config/
# Config Files
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/sway ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/waybar ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/foot ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/lxterminal ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/mako ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/nvim ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/mpv ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/qutebrowser ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/neofetch ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/gtk-3.0 ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/zathura ~/.config/
ln -sf ~/.local/wayland-dots/sway-dotfiles/cfg/user-dirs.dirs ~/.config/

echo " ########################### "
echo " ### Directory In Home ##### "
echo " ########################### "
mkdir -p ~/{desk,dl,dox,music,prjcts,vids,pub}
rm -rf ~/Desktop/ Documents/ Downloads/ Music/ Pictures/ Public/ Templates/ Videos/ 2> /dev/null

echo "##############################"
echo "##### Pacman Things ##########"
echo "##############################"
sudo pacman -Rsn vim
paccache -ruvk0
sudo systemctl enable bluetooth
sudo mkdir -p /etc/pacman.d/
cd /etc/pacman.d/
sudo git clone https://github.com/archxyz/hooks.git

echo "##############################"
echo "########### DONE #############"
echo "##############################"
sleep 5
exit

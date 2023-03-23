#!/usr/bin/bash
sudo pacman -S --needed --noconfirm wayland xorg-xwayland sway swaybg swaylock swayidle waybar \
	foot lxterminal fuzzel grim slurp swappy mako \
	firefox qutebrowser \
	nemo mpv yt-dlp aria2 swayimg zathura zathura-pdf-mupdf \
	arc-gtk-theme papirus-icon-theme \
	adobe-source-han-sans-jp-fonts ttf-dejavu ttf-font-awesome ttf-jetbrains-mono-nerd \
	neovim fzf fd exa bat wl-clipboard trash-cli man-db brightnessctl imagemagick \
	udiskie dosfstools ntfs-3g \
	gvfs gvfs-mtp gvfs-smb gvfs-afc gvfs-nfs gvfs-gphoto2 \
	unrar unzip zip \
	network-manager-applet \
	bluez bluez-utils blueman \
	pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber alsa-utils pavucontrol \
	xf86-video-intel xdg-user-dirs pacman-contrib neofetch htop starship \
	npm python python-pip

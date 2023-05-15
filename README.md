* **Window Manager** • [Sway ](https://github.com/swaywm/sway)🎨 My Home
* **Window Manager** • [Hyprland ](https://github.com/hyprwm/Hyprland)🎨 Tiles Everywhere!
* **Shell** • [Zsh ](https://www.zsh.org) 🐚 con [starship](https://github.com/starship/starship) Cross Shell Platform!
* **Terminal** • [Foot ](https://github.com/wez/wezterm) 💻 A fast, lightweight and minimalistic Wayland terminal emulator
* **Panel** • [Waybar ](https://aur.archlinux.org/packages/waybar-hyprland-git)🍧 Patched waybar following hyprland faq!
* **Notify Daemon** • [Mako ](https://github.com/emersion/mako) 🍃 Minimalist and functional!
* **Launcher** • [Fuzzel ](https://codeberg.org/dnkl/fuzzel) 🚀 Application launcher for wlroots based Wayland compositors, similar to rofi's `drun` mode.
* **File Manager** • [Ranger ](https://github.com/ranger/ranger)🔖 custom!
* **GUI Basic-IDE** • [NeoVim](Vim-fork focused on extensibility and usability) Rice IDE!

## 🌸 Setup

<img src="https://github.com/Farah-xyz/wayland-dots/blob/main/sway-dotfiles/pix/screen/myWorkflow.jpg">

### Install steps (Take care about it. Isn't a full tutorial)
<details>
<summary><b>LONG READ</b></summary>

### Installation (Paq and deps)
#### Using paru as AUR helper 🆘

```sh
# install paru...
mkdir $HOME/Downloads/_cloned-repos
cd $HOME/Downloads/_cloned-repos
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

#### Installing needed dependencies 📦

```sh
paru -S hyprland-git polkit-kde-agent dunst grimblast rofi rofi-emoji       \
wl-clipboard wf-recorder wlogout grimblast-git hyprpicker-git hyprpaper-git \
xdg-desktop-portal-hyprland-git ffmpegthumbnailer tumbler wtype colord      \
imagemagick swaylock-effects qt5-wayland qt6-wayland ripgrep waybar-hyprland-git
```

**Extras*
```sh
# themes
paru -S catppuccin-gtk-theme-mocha catppuccin-cursors-mocha catppuccin-mocha-grub-theme-git nwg-look

# apps
paru -S cava pavucontrol ranger zsh starship neovim viewnior noise-suppression-for-voice
```

**If you want a Graphical file-manager*
```sh
thunar thunar-archive-plugin file-roller
```


##### Clone Repo

```sh
git clone https://github.com/farah-xyz/wayland-dots $HOME/Downloads/wayland-dots/
cd $HOME/Downloads/hyprland-dots/
rsync -avxHAXP --exclude '.git*' .* ~/
```

#### As fonts i'm using **Cartograph CF** (patched with nerdfont) It's a licensed font, then select any font you like :3
```sh
mkdir -p $HOME/Downloads/nerdfonts/
cd $HOME/Downloads/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.1/CascadiaCode.zip
unzip '*.zip' -d $HOME/Downloads/nerdfonts/
rm -rf *.zip
sudo cp -R $HOME/Downloads/nerdfonts/ /usr/share/fonts/
```

##### Regenerate font cache
```sh
fc-cache -rv
```
### As gtk theme i'm using [Catppuccin](https://github.com/catppuccin/catppuccin)

## Credits

_Beauty community: [r/unixporn](https://www.reddit.com/r/unixporn)._

**©** _Artist who make Wallpapers, graphics and more_

**©** _All of mantainers of this amazing and opensource tools :3_

---


© [Owl4ce](https://github.com/owl4ce)
© [Ilham25](https://github.com/ilham25)
© [Siduck](https://github.com/siduck)
© [NvChad](https://github.com/NvChad)
© [Rxyhn](https://github.com/rxyhn)
© [AmitGold](https://github.com/AmitGolden)

<p align=center>
    <img alt="Screenshot of various applications" src="https://github.com/Farah-xyz/wayland-dots/blob/main/sway-dotfiles/pix/screen/myWorkflow.jpg">
    <h3 align=center>Configurations and colorschemes for Sway, and waybar.</h3>
</p>
<p align=center>
    <a href="#programs">Programs</a> | <a href="#Applications">Applications</a> | <a href="#screenshots">Screenshots</a>
</p>

# Programs
This repository contains configuration files for many programs that I regularly use on a day to day basis. I've also given brief descriptions of what each program does so you don't have to wonder what something is -- and because you might like something and want try it out. If you'd like me to style an application that isn't listed here, submit an issue and I'll try my best.
 - [`foot`](https://codeberg.org/dnkl/foot) A fast, lightweight and minimalistic Wayland terminal emulator
 - [`cava`](https://github.com/karlstav/cava) is a console-based audio visualizer for ALSA.
 - [`mako`](https://github.com/emersion/mako) is a lightweight notification daemon for Wayland.
 - [`neofetch`](https://github.com/dylanaraps/neofetch) is a very popular command line information tool.
 - [`nvim`](https://neovim.io/) is a fork of vim that has been rewritten for usability and extensibility.
 - [`wal`](https://github.com/dylanaraps/pywal) is a color scheme generator and manager.
 - [`sway`](https://swaywm.org) is a tiling Wayland compositor which serves as a drop-in replacement of i3. Use with [#5639](https://github.com/swaywm/sway/pull/5639).
 - [`waybar`](https://github.com/Alexays/Waybar) is a highly customizable Wayland bar for Sway and Wlroots based compositors.
 - [`fuzzel`](https://codeberg.org/dnkl/fuzzel) Application launcher for wlroots based Wayland compositors, similar to rofi's `drun` mode.
 - [`qutebrowser`](https://github.com/qutebrowser/qutebrowser) A keyboard-driven, vim-like browser based on Python and Qt.
 - [`bash`](https://wiki.archlinux.org/title/Bash) Bash (Bourne-again Shell) is a command-line shell/programming language by the GNU Project

### Distro
I personally use Arch Linux, but there's nothing specific to these config files that shouldn't work on other distributions. Be aware, however, that installation procedures for the individual packages will certainly be different and that the _locations_ of config files _may_ be different. If you would like to install Arch Linux follow the directions on the [Arch Wiki](https://wiki.archlinux.org/index.php/Installation_guide). I personally used [Anarchy Installer](https://anarchyinstaller.org/) to install Arch and some important packages, but it is neither necessary, nor entirely recommended.

### Fonts
All the applications have been setup to use the [Nord Fonts](https://github.com/ryanoasis/nerd-fonts) font, so follow the instructions on its Github for installation.

# Applications
The official [Arch repos](https://www.archlinux.org/packages/) or the [Arch User Repository (AUR)](https://aur.archlinux.org/) contain all of the applications I use, sometimes under a different name than the folder.
<h4>or use my bash scripts in `wayland-dots/sway-config/swayPkg.sh`</h4>


For [Sway](https://swaywm.org), make sure to use [#5639](https://github.com/swaywm/sway/pull/5639) by applying it as a [patch](https://patch-diff.githubusercontent.com/raw/swaywm/sway/pull/5639.patch) and [compiling from source](https://github.com/swaywm/sway#compiling-from-source) for the curved borders with drop shadows. Keep in mind that the config syntax may change and that not all functions work. Refer to the inline `TODO` comments and discussion threads to watch the progress.

### Scripts & hooks
I have some hooks for archlinux in repo `frhXM/hooks` that I use to control somme Pacman auto Commands (PKG manager for archlinux)

# Screenshots
<blockquote>Older Screen For Older Dotfiles</blockquote>

|![Htop, neovim, bonsai.sh, pipes.sh, cava, neofetch, waybar][banner]|![Weechat and Discord][comms]|
|---|---|
|From top-left to bottom-right: `htop`, `nvim`, `bonsai.sh`, `pipes.sh`, `cava`, `neofetch`, `waybar`|Weechat and Discord (Lightcord)|

<!-- Links -->
[banner]: https://raw.githubusercontent.com/TheAvidDev/dotfiles/master/img/banner.png
[comms]: https://raw.githubusercontent.com/TheAvidDev/dotfiles/master/img/comms.png

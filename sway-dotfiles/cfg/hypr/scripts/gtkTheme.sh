#!/bin/bash

## Set GTK Themes, Icons, Cursor and Fonts
THEME='Arc-Dark'
ICONS='Papirus-Dark'
FONT='JetBrains Mono Nerd Font 10'
CURSOR='Catppuccin-cursor'
SCHEMA='gsettings set org.gnome.desktop.interface'

apply_themes() {
  ${SCHEMA} gtk-theme "$THEME"
  ${SCHEMA} icon-theme "$ICONS"
  ${SCHEMA} cursor-theme "$CURSOR"
  ${SCHEMA} font-name "$FONT"
}

apply_themes

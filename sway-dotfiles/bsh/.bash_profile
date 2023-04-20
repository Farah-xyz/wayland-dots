# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi
# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && exec sway 2> /dev/null
[ "$(tty)" = "/dev/tty2" ] && exec Hyprland 2> /dev/null

#####---------- EXPORTS ----------###
export MOZ_ENABLE_WAYLAND=1
export TERMINAL="kitty"
export BROWSER="qutebrowser"
export EDITOR="nvim"
export VISUAL="nvim"
export MYVIMRC="$HOME/.config/nvim/init.lua"
export VIMINIT="source $MYVIMRC"
# export LESSHISTFILE=-
# export HISTFILE="$HOME/.config/bash/.bash_history"
###---------- SHELL OPTIONS -------###
set -o vi
shopt -s cdable_vars
shopt -s autocd
shopt -s cdspell
shopt -s dirspell
shopt -s dotglob
shopt -s extglob
shopt -s no_empty_cmd_completion
shopt -s nocaseglob
###------------- PROMPT -----------###
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
GREEN="\e[1;92m"
CYAN="\e[1;36m"
NC='\033[0m'
export PS1="${CYAN}[ \W\$(parse_git_branch) ]${GREEN} ❱❱❱${NC} "
###------------- FZF -----------###
source /usr/share/fzf/key-bindings.bash
export FZF_CTRL_T_COMMAND='fd --type f --color=never'
export FZF_ALT_C_COMMAND='fd --type d --color=never '
export FZF_DEFAULT_COMMAND='fd --type f --color=never --exclude "*.jpg" --exclude "*.png"'
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#11121D,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--border --preview 'bat --color=always {}' --preview-window '~3' \
--multi
--prompt='∼ '
--pointer='▶'
--marker='✓'
--bind 'ctrl-a:select-all'"
# Run NeoVim With Fzf I'ts Magick
alias run_in_neovim="fzf --multi --bind 'enter:become(nvim {+})'"
bind '"\C-v":"run_in_neovim\n"'
# Fzf ALT_C Always Run in Home
cd_with_fzf() {
    cd $HOME && cd "$(fd -t d | fzf --preview="exa --long --tree --level=2 {}" --bind="space:toggle-preview" --preview-window=:hidden)"
}
bind '"\ec":"cd_with_fzf\n"'
###------------ ALIASES -----------###
## navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
# Changing "ls" to "lsd"
alias ls='exa -l --color=always --group-directories-first'  # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -T --color=always --group-directories-first'	# tree listing
alias l.='exa -a | egrep "^\."'
## force confirm before overwriting something
alias cp="cp -f"
alias mv='mv -f'
alias rm='trash-put'
## bat && find
alias cat='bat'
alias find='fd'
## Editor Vim NeoVim
alias v='nvim'
alias vi="nvim"
alias nv="nvim"
alias vim="nvim"
## V && X && C & H & N
alias x='startx'
alias h='history'
alias n='clear && neofetch'
alias c='clear'
alias cc='clear'
alias ss='imv -b 11121D'
## Drive
alias nm='nemo'
alias drive='nemo /run/media/frhxm/'
alias usb='cd /run/media/frhxm/ && ls'
## Pacman && yay
alias update='sudo pacman -Syu && echo "UPDATE"'
alias upgrade='sudo pacman -Syu && echo "UPGRADED"'
## Grub && (i can use hooks To auto update grub after update Linux or grub but idon't want)
alias install_grub='sudo grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB' # After Update Grub
alias update_grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'	# After Update Linux Karnel
## alias for configs
alias dots="cd ~/.local/wayland-dots/"
alias swayc="nvim ~/.config/sway/config"
alias waybarc="nvim ~/.config/waybar/config"
alias footc="nvim ~/.config/foot/foot.ini"
alias qtilec="nvim ~/.config/qtile/config.py"
alias fishc="nvim ~/.config/fish/config.fish"
alias xmonadc="nvim ~/.config/xmonad/xmonad.hs"
alias xmobarc="nvim ~/.config/xmobar/xmobar.hs"
alias bashc="nvim ~/.bashrc"
alias kittyc="nvim ~/.config/kitty/kitty.conf"
alias nvimc="nvim ~/.config/nvim/init.lua"
alias starc="nvim ~/.config/starship.toml"
# Git Alias
alias gs="git status"
alias gst="git status -sb"
alias gl="git log"
alias ga="git add"
alias gaa="git add -A"
alias gal="git add ."
alias gall="git add ."
alias gca="git commit -a"
alias gc="git commit -m"
alias gcot="git checkout"
alias gchekout="git checkout"
alias gchckout="git checkout"
alias gckout="git checkout"
alias go="git push -u origin"
alias gsh='git stash'
alias gw='git whatchanged'
# yt-dlp Alias
alias yt='yt-dlp \
    --format "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4] / bv*+ba/b" \
    --ignore-errors \
    --output "~/vids/%(uploader)s/%(upload_date)s-%(title)s-%(id)s.%(ext)s" \
'
#=================== Tab Completions ===================#
# If there are multiple matches for completion, Tab should cycle through them
bind 'TAB:menu-complete'
# And Shift-Tab should cycle backwards
bind '"\e[Z": menu-complete-backward'
# Display a list of the matching files
bind "set show-all-if-ambiguous off"
# Perform partial (common) completion on the first Tab press, only start
# cycling full results on the second Tab press (from bash version 5)
bind "set menu-complete-display-prefix on"
# Ignore Hidden Files
bind 'set match-hidden-files off'
#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"
#=================== Starship Peompt ===================#
eval "$(starship init bash)"

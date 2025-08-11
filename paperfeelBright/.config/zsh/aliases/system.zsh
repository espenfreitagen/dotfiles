#-----------------------------------------------------------------------------------------------
# CD
#-----------------------------------------------------------------------------------------------
alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'

alias cdbin="cd $HOME/.local/bin"

#--------------------------------------
# LS
#--------------------------------------
alias l='eza -lh'
alias lc='clear && eza -lh'

alias la='eza -ah'
alias lac='clear && eza -ha'

alias ll='eza -lah'
alias llc='clear && eza -lah'

alias lr='pwd && eza --tree'
alias lrc='clear && pwd && eza --tree'

alias lsbin="eza -l $HOME/.local/bin"
#--------------------------------------
# SYMLINKS
#--------------------------------------
alias lls='ls -l | grep "^l"'
alias llsconf='find ~/.config -type l | sort'
alias llsdot='find ~/dotfiles -type l | sort'

#--------------------------------------
# RM
#--------------------------------------
alias rm='rm -I'
alias rmrf='rm -rf'

#--------------------------------------
# NETWORK
#--------------------------------------
alias ipv4="ip addr show | grep 'inet ' | grep -v '127.0.0.1' | cut -d' ' -f6 | cut -d/ -f1" 
alias ipv6="ip addr show | grep 'inet6 ' | cut -d ' ' -f6 | sed -n '2p'" 
alias wfl='nmcli dev wifi rescan && sleep 2 && nmcli dev wifi list'

#--------------------------------------
# PACMAN / YAY
#--------------------------------------
alias gib='sudo pacman -S'
alias pacup='sudo pacman -Syu'
alias yayup='sudo yay -Syu'
alias paclocal="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias pacremote="pacman -Slq | fzf --preview 'pacman -Si {}' --layout=reverse"

#--------------------------------------
# UTILS
#--------------------------------------
alias zconf="nvim ~/.config/zsh/.zshrc"
alias zup='source "$ZDOTDIR/.zshrc" && print -P "%F{green}zshrc reloaded%f"'
alias nvstartup='time nvim +qa'
alias zshstartup='time zsh -i -c exit'
alias kittystartup='time kitty -e echo ready'

#--------------------------------------
# SYSTEM
#--------------------------------------
alias error='journalctl -b -p err'
alias fucking='sudo'

alias lo='exec loginctl terminate-user $USER'
alias rb='sudo reboot'
alias ai='tgpt'
alias rss='newsboat'

#------------------------------------------
# Trashcan
#------------------------------------------
alias takeoutgarbage='rm -rfI ~/.cache/* && rm -rfI ~/.cargo/'

#-----------------------------------------------------------------------------------------------
#  Apple touchbar aliases
#-----------------------------------------------------------------------------------------------
# configfile for the apple touchbar
alias tbconf="nvim /etc/tiny-dfr/config.toml"

# themes are in ~/.local/share/icons/*
alias tbthemes="cd ~/.local/share/icons/"

#-----------------------------------------------------------------------------------------------
# MISC
#-----------------------------------------------------------------------------------------------
alias hl='XDG_SESSION_TYPE=wayland Hyprland'
alias lkus='sudo loadkeys us'
alias cdstorage="cd $HOME/Storage"
alias hyprlog="HYPRLAND_LOG_WLR=1 Hyprland > $HOME/hypr.log 2>&1"
alias hprl='pkill hyprpaper && hyprpaper &'
alias hostedit='snv /etc/hosts'
alias tarup='ping $tar'

#-----------------------------------------------------------------------------------------------
# NEOVIM
#-----------------------------------------------------------------------------------------------
alias nv='nvim'
alias tdo="nvim $HOME/notes/todo.norg"
alias qno="nvim $HOME/notes/quicknotes.norg"

#-----------------------------------------------------------------------------------------------
# KITTY
#-----------------------------------------------------------------------------------------------
alias kittyconf='nvim $HOME/.config/kitty/kitty.conf'

# Show pictures
alias icat='kitty +kitten icat --align=left'

#-----------------------------------------------------------------------------------------------
# GREP
#-----------------------------------------------------------------------------------------------
alias grep='grep --color=auto'
alias gclua='grep --color=auto"^--"' #grep comments in .lua
alias glua='grep --color=auto"^function"' #grep functions in .lua

#-----------------------------------------------------------------------------------------------
# TMUX
#-----------------------------------------------------------------------------------------------
alias sourcetmux='tmux source-file $HOME/.config/tmux/tmux.conf'
alias tmuxconf='nvim $HOME/.config/tmux/tmux.conf'

alias tmuxdt='tmux detach'

#-----------------------------------------------------------------------------------------------
# HYPR
#-----------------------------------------------------------------------------------------------
alias hyprconf='nvim $HOME/.config/hypr/hyprland.conf'
alias paperconf='nv $HOME/.config/hypr/hyprpaper.conf'
alias rh='hyprctl reload'

alias focus='gamemode.sh && clear'

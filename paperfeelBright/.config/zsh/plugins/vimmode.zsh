#---------------------------------
# VIM MODE ZSH
#---------------------------------
# Track visual mode
typeset -g ZSH_VI_VISUAL=0

function enter-visual-mode() {
  ZSH_VI_VISUAL=1
  MODE="%F{yellow}[Visual]%f"
  zle reset-prompt
}
zle -N enter-visual-mode

function exit-visual-mode() {
  ZSH_VI_VISUAL=0
}

# Mode indicator in prompt
function zle-keymap-select {
  if (( ZSH_VI_VISUAL )); then
    return  # Don't override visual mode prompt
  fi

  case $KEYMAP in
    vicmd) MODE="%F{blue}[% Normal%\]%f" ;;
    viins|main) MODE="%F{red}[% Insert%\]%f" ;;
    *) MODE="[% ??? %]" ;;
  esac
  zle reset-prompt
}
zle -N zle-keymap-select

# Init
MODE="%F{red}[% Insert%\]%f"

# Enable jk-escape in insertmode
function vi-jk-escape() {
  zle vi-cmd-mode
}
zle -N vi-jk-escape

# Enable visual mode
function exit-visual-wrapper() {
  exit-visual-mode
  zle vi-insert
}
zle -N exit-visual-wrapper


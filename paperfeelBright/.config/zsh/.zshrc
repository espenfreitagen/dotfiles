# ~/.config/zsh/.zshrc

# -----------------------------------------------------------------------------
# Setting up the shell
# -----------------------------------------------------------------------------
setopt extended_glob null_glob

# Vim-mode 
bindkey -v  

# Select theme
THEME="paperfeelBright"

# -----------------------------------------------------------------------------
#  Aliases, Functions and Plugins
# -----------------------------------------------------------------------------
for f in "$ZDOTDIR"/functions/**/*.zsh(N); do source "$f"; done
for f in "$ZDOTDIR"/aliases/**/*.zsh; do source "$f"; done
source "$ZDOTDIR/plugins/loader.zsh"
# -----------------------------------------------------------------------------
# History
# -----------------------------------------------------------------------------
HISTFILE="$HOME/.config/zsh/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# -----------------------------------------------------------------------------
# Theme
# -----------------------------------------------------------------------------
export LS_COLORS="$(vivid generate paperfeel)"

export THEME_DIR="$ZDOTDIR/theme/$THEME"
for f in $THEME_DIR/*.zsh(N); do source "$f"; done

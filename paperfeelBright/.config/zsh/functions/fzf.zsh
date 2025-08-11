#-----------------------------------------------------------------------------------------------
#FZF 
#-----------------------------------------------------------------------------------------------
export FZF_DEFAULT_OPTS='
  --height=50%
  --layout=reverse
  --color=fg:#4a4a4a,fg+:#4a4a4a,bg:#fffeef,bg+:#ffe048
  --color=hl:#0080ff,hl+:#5fd7ff,info:#4a4a4a,marker:#0c00f3
  --color=prompt:#436fff,spinner:#af5fff,pointer:#af5fff,header:#fa5cff
  --color=border:#4a4a4a,preview-label:#fa53f4,label:#aeaeae,query:#4a4a4a
  --border="rounded" --border-label="" --preview-window="border-bold" --prompt="> "
  '

# FZF file picker (open in nvim)
fnv() {
  local file
  file=$(find . -type f | fzf --preview 'bat --style=numbers --color=always {} | head -100') || return
  nvim "$file"
}

# FZF cd into a directory
fcd() {
  local dir
  dir=$(find . -type d \ -prune -false -o -print \
        | fzf --prompt='cd into > ' --preview 'tree -C {} | head -50') || return
  cd "$dir"
}

# FZF grep (ripgrep required)
frg() {
  local file
  file=$(rg --files | fzf --preview 'bat --style=numbers --color=always {} | head -100') || return
  nvim "$file"
}

#FZF neorg files
fnorg() {
  local file
  file=$(find . -type f -name "*.norg" \
    | fzf --prompt="norg > " \
          --preview 'bat --style=numbers --color=always {} | head -100' \
          --layout=reverse --border) || return
  nvim "$file"
}
# Keybinds (CTRL-G to grep, CTRL-F to files)
bindkey '^F' fcd
bindkey '^G' frg

#FZF grep aliases and functions
falias() {
cat $HOME/.config/zsh/aliases/* | fzf --ansi --preview 'echo {} | cut -d: -f1 | xargs bat --style=numbers --color=always --line-range :50'
}

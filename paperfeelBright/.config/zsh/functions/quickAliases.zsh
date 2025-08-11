#-----------------------------------------------------------------------------------------------
# QUICKALIAS
#-----------------------------------------------------------------------------------------------
addalias(){
  if [[ $# -lt 2 ]]; then
    echo "Usager: addalias name 'command'"
    return 1
  fi

  local name=$1
  shift
  local cmd="$*"
  local file="$ZDOTDIR/aliases/quickalias.zsh"

  echo "alias $name='$cmd'" >> "$file"
  echo "Added: alias $name='$cmd"
  source "$file"
}

cleanquickalias() {
  echo "" > "$ZDOTDIR/aliases/quickalias.zsh"
  echo "Quick aliases wiped!"
}

#-----------------------------------------------------------------------------------------------
# JWT
#-----------------------------------------------------------------------------------------------
# Autocompletion for JWT-cli tool
if (( $+commands[jwt] )); then
  if jwt completion zsh >/dev/null 2>&1; then
    eval "$(jwt completion zsh)"
  fi
fi

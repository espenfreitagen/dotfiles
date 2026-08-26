# Exit code indicator (bare vises hvis siste kommando feilet)
precmd() {
    if [[ $? -ne 0 ]]; then
        export PROMPT_STATUS="✘"
    else
        export PROMPT_STATUS="OK"
    fi
}

# Prompt
PROMPT='%d 
   '

RPROMPT="%T"

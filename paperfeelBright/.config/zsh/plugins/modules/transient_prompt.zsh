#-----------------------------------------------------------------------------------------------
# TRANSIENT PROMPT
#-----------------------------------------------------------------------------------------------
_vbe_prompt () {
    local retval=$?

    # When compact, just time + prompt sign
    if (( $_vbe_prompt_compact )); then
        # Current time (with timezone for remote hosts)
        _vbe_prompt_segment cyan default "%D{%H:%M${SSH_TTY+ %Z}}"
        # Hostname for remote hosts
        [[ $SSH_TTY ]] && \
            _vbe_prompt_segment black magenta "%B%M%b"
        # Status of the last command
        if (( $retval )); then
            _vbe_prompt_segment red default ${PRCH[reta]}
        else
            _vbe_prompt_segment green cyan ${PRCH[ok]}
        fi
        # End of prompt
        _vbe_prompt_end
        return
    fi

    # Regular prompt with many information
    # […]
}

_vbe-zle-line-init() {
    [[ $CONTEXT == start ]] || return 0

    # Start regular line editor
    (( $+zle_bracketed_paste )) && print -r -n - $zle_bracketed_paste[1]
    zle .recursive-edit
    local -i ret=$?
    (( $+zle_bracketed_paste )) && print -r -n - $zle_bracketed_paste[2]

    # If we received EOT, we exit the shell
    if [[ $ret == 0 && $KEYS == $'\4' ]]; then
        _vbe_prompt_compact=1
        zle .reset-prompt
        exit
    fi

    # Line edition is over. Shorten the current prompt.
    _vbe_prompt_compact=1
    zle .reset-prompt
    unset _vbe_prompt_compact

    if (( ret )); then
        # Ctrl-C
        zle .send-break
    else
        # Enter
        zle .accept-line
    fi
    return ret
}
zle -N zle-line-init _vbe-zle-line-init

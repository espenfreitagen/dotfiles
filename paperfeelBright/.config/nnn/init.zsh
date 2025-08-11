# NNN Config
export NNN_PLUG='o:fzopen;p:preview;d:diffs;c:code'
export NNN_OPENER=xdg-open
export NNN_FIFO=/tmp/nnn.fifo
export NNN_USE_EDITOR=1
export NNN_EDITOR=nvim
export NNN_BMS='d:~/Documents;w:~/Downloads;n:~/notes'

# cd on quit (requires wrapper function)
nn() {
    NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    \nnn "$@"
    if [ -f "$NNN_TMPFILE" ]; then
        . "$NNN_TMPFILE"
        rm -f "$NNN_TMPFILE"
    fi
}


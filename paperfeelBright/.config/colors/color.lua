# Pen- and pencil-like textcolors
FG_TEXT=$'%F{#4a4a4a}'        # Regular text
FG_DIM=$'%F{#6a6a6a}'         # Comments / less important

# Highlight markers
# Yellow marker (main marker)
FG_HIGHLIGHT=$'%F{#f5de76}'   
BG_HIGHLIGHT=$'%K{#f5de76}'

# Pink marker
FG_HIGHLIGHT_PINK=$'%F{#f5c2e7}'     
BG_HIGHLIGHT_PINK=$'%K{#f5c2e7}'

# Blue marker
FG_HIGHLIGHT_BLUE=$'%F{#89b4fa}'     
BG_HIGHLIGHT_BLUE=$'%K{#89b4fa}'

# Other markercolors
FG_BLUE=$'%F{#4c4f8d}'        # Folders, commands
FG_LINK=$'%F{#4385b1}'        # Paths, symbols
FG_GREEN=$'%F{#4ac26e}'       # ✓ success
FG_RED=$'%F{#d95550}'         # Insert mode / error
FG_NORMAL=$'%F{#7089a0}'      # Normal mode

# Modes
MODE_NORMAL=$FG_NORMAL
MODE_INSERT=$FG_RED
MODE_VISUAL=$FG_HIGHLIGHT

# Reset
RESET_FG=$'%f'
RESET_BG=$'%k'
RESET_ALL=$'%f%k%b%u'


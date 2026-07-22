bindkey -v
export KEYTIMEOUT=1

_cursor_block() { printf '\e[2 q' }
zle -N zle-line-init _cursor_block
zle -N zle-keymap-select _cursor_block
add-zsh-hook precmd _cursor_block

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

bindkey -s '^f' 'tmux-sessionizer\n'

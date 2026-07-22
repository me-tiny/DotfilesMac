zmodload zsh/complist
autoload -Uz compinit

_zcd="$ZDOTDIR/.zcompdump"
if [[ ! -f $_zcd || -n $_zcd(#qNmh+24) ]]; then
    compinit -d $_zcd
else
    compinit -C -d $_zcd
fi
unset _zcd

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select

# (( $+commands[uv] )) && eval "$(uv generate-shell-completion zsh)"

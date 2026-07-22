export DOTFILES="$HOME/.dotfiles"
export HISTFILE="$ZDOTDIR/.zsh_history"

export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"

typeset -U path PATH
path=(
    $ZDOTDIR/scripts
    $ZDOTDIR/.cargo/bin
    $HOME/.local/bin
    $HOME/go/bin
    /opt/homebrew/bin/
    /opt/homebrew/opt/openvpn/sbin
    $path
)

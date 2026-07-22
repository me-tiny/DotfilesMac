ZSH_PLUGIN_DIR=$ZDOTDIR/plugins

[[ -d $ZSH_PLUGIN_DIR/zsh-completions/src ]] && fpath=($ZSH_PLUGIN_DIR/zsh-completions/src $fpath)

if [[ -r $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

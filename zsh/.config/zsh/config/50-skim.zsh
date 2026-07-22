export SKIM_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export SKIM_CTRL_T_COMMAND="$SKIM_DEFAULT_COMMAND"
export SKIM_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
export SKIM_DEFAULT_OPTIONS="--height 40% --reverse"

for _sk in /usr/share/skim/key-bindings.zsh /usr/share/skim/completion.zsh; do
    [[ -r $_sk ]] && source $_sk
done
unset _sk

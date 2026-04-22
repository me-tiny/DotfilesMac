set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx MANPAGER "nvim +Man!"
set -gx DOTFILES $HOME/.dotfiles

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/go/bin
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/Library/Python/3.9/bin

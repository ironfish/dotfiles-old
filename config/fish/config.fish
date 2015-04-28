# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme bobthefish-dkd
#set -g theme_display_user yes
set -g theme_display_ruby no

#eval sh $HOME/dotfiles/themes/base16-shell/base16-tomorrow.dark.sh
#eval sh $HOME/dotfiles/themes/base16-shell/base16-monokai.dark.sh
#eval sh $HOME/dotfiles/themes/base16-shell/base16-twilight.dark.sh

set UTIME upt

tmux setenv UT (eval $UTIME)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
set fish_custom $HOME/.config/fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# THEME {{
# ==================================================================================================================================
set fish_theme agnoster
if [ -e "$TMUX" ]
  set -gx TERM xterm-256color
else
  set -gx TERM screen-256color
end
# ==================================================================================================================================
# }}

# ALIASES {{
# ==================================================================================================================================
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias ef 'nvim ~/dotfiles/config/fish/config.fish'
alias et 'nvim ~/dotfiles/tmux/tmux.conf'
alias en 'nvim ~/dotfiles/nvim/nvimrc'
alias gd 'cd ~/dotfiles/'
alias gf 'cd ~/dotfiles/config/fish/'
alias gn 'cd ~/Dropbox/Notes/'
alias gw 'cd ~/Workspace/'
alias gwt 'cd ~/Workspace/typesafe/'
alias gww 'cd ~/Workspace/ww/'
# ==================================================================================================================================
# }}

# PLUGINS {{
# ==================================================================================================================================
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins brew tmux
# ==================================================================================================================================
# }}

# ENVIRONMENT VARIABLES {{
# ==================================================================================================================================
# set the default source for FZF to ag
set -g -x FZF_DEFAULT_COMMAND 'ag -l -g ""'

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
set fish_custom $HOME/.config/fish
# ==================================================================================================================================
# }}

# OH-MY-FISH {{
# ==================================================================================================================================
# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
# ==================================================================================================================================
# }}

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# THEME {{
# ==================================================================================================================================
#eval sh $HOME/.config/base16-shell/base16-ocean.dark.sh
#eval sh $HOME/.config/base16-shell/base16-ocean.light.sh
eval sh $HOME/.config/base16-shell/base16-solarized.light.sh
#if [ -e "$TMUX" ]
#  set -gx TERM xterm-256color
#else
#  set -gx TERM screen-256color
#end
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
alias gits 'git status'
alias gitp 'git pull'
# ==================================================================================================================================
# }}

# ENVIRONMENT VARIABLES {{
# ==================================================================================================================================
# set the default source for FZF to ag
set -g -x FZF_DEFAULT_COMMAND 'ag -l -g ""'

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish
set fish_custom $HOME/.config/fish

# docker stuff
set -x DOCKER_HOST tcp://192.168.59.103:2376
set -x DOCKER_CERT_PATH /Users/ironfish/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1

# ==================================================================================================================================
# }}

# OH-MY-FISH {{
# ==================================================================================================================================
# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'agnoster'
Plugin 'brew'
Plugin 'tmux'
# ==================================================================================================================================
# }}

source /Users/ironfish/.iterm2_shell_integration.fish

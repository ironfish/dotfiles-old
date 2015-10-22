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
# edit aliases
alias ef 'nvim ~/dotfiles/config/fish/config.fish'
alias et 'nvim ~/dotfiles/tmux/tmux.conf'
alias en 'nvim ~/dotfiles/nvim/nvimrc'

# print aliases
alias cf 'cat ~/dotfiles/config/fish/config.fish'

# cd aliases
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias cdd 'cd ~/dotfiles/'
alias cdf 'cd ~/dotfiles/config/fish/'
alias cdg 'cd ~/Workspace/github'
alias cdn 'cd ~/Dropbox/Notes/'
alias cdt 'cd ~/Workspace/typesafe/'
alias cdw 'cd ~/Workspace/'

# git aliases
alias ga 'git add .'
alias gc 'git commit -m'
alias gcd 'git checkout -b'
alias gp 'git pull'
alias gpo 'git push origin'
alias gs 'git status'

# sbt aliases
alias scc 'sbt clean compile'
alias st  'sbt test'
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
#set -x DOCKER_HOST tcp://192.168.59.103:2376
#set -x DOCKER_CERT_PATH /Users/ironfish/.boot2docker/certs/boot2docker-vm
#set -x DOCKER_TLS_VERIFY 1

set -g -x fish_term24bit 1
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

# Load ~/.bash_prompt, ~./exports, ~/.aliases, ~/.functions, and ~/.secrets
# ~./secrets can be used for settings you don't want to commit
for file in ~/.{bash_prompt,aliases,secrets}; do
  [ -r "$file" ] && source "$file"
done
unset file
# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# COLOR SETTINGS --------------------------------------------------------------------------------------------------------------- {{{
# OSX (Darwin)'s bash shell is different from linux. @see man ls as to why the colors are set this way.
export CLICOLOR=1

# Good for dark backgrounds.
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
#export LSCOLORS=gxfxcxdxbxegedabagacad

 #}}}

# HOMEBREW SETTINGS ------------------------------------------------------------------------------------------------------------ {{{

# Path fix for Hombrew version of Git
# NOTE: This is now set in /etc/paths
#export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# Homebrew bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# }}}

# DEVELOPMENT SETTINGS --------------------------------------------------------------------------------------------------------- {{{

# Java home & path
export JAVA_HOME=$(/usr/libexec/java_home)
#export PATH=$JAVA_HOME/bin:$PATH

# ~/bin directory
export PATH="$PATH:~/bin"

# set path for GUI apps.
launchctl setenv PATH $PATH

# Increase memory when running maven
export MAVEN_OPTS="-Xms256m -Xmx1024m -XX:MaxPermSize=512m"

# }}}

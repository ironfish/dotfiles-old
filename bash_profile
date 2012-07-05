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
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
#export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD

 #}}}

# HOMEBREW SETTINGS ------------------------------------------------------------------------------------------------------------ {{{

# Path fix for Hombrew version of Git
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# Homebrew bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# }}}

# DEVELOPMENT SETTINGS --------------------------------------------------------------------------------------------------------- {{{

# ActiveMQ path
#export ACTIVEMQ_HOME=/Users/ddevore/Applications/apache-activemq-5.5.0

# Java home & path
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH

# Maven home & path
export M2_HOME=/Users/ddevore/Applications/apache-maven-3.0.3
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# Postgres home & path
export PG_HOME=/Users/ddevore/Applications/PostgreSQL/9.0
export PATH=$PG_HOME/bin:$PATH

# Sbt home & path
# NOTE: sbt now managed by homebrew
#export SBT_HOME=/Users/ddevore/Applications/sbt-launch-0.7.7
#export PATH=$SBT_HOME/bin:$PATH

# Scala home & path
# NOTE: sala now managed by homebrew
#export SCALA_HOME=/Users/ddevore/Applications/scala-2.9.1.final
#export PATH=$SCALA_HOME/bin:$PATH

# Subversion home & path
export SVN_HOME=/opt/subversion/
export PATH=$SVN_HOME/bin:$PATH

# Tomcat home
#export TOMCAT_HOME=/Users/ddevore/Applications/apache-tomcat-7.0.19

# VPower home
export VIR_HOME=/Users/ddevore/Workspace/Viridity/Tracks/vpower
export VIR_BROKER_HOME=/Users/ddevore/Workspace/Viridity/Tracks/vpower/vpower-optimize/vpower-optimize-broker

# Increase memory when running maven
export MAVEN_OPTS="-Xms256m -Xmx1024m -XX:MaxPermSize=512m"

# }}}

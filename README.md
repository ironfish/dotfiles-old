# dotfiles@ddevore

## Disclaimer

I'm a mac head so this while this configuration may work on other nixes, its OSX centric. 

## Assumptions

This configuration is a work in process and will definitely change over time. Additionally it assumes you have certain software installed like [MacVim](http://code.google.com/p/macvim/), [CTAGS](http://ctags.sourceforge.net/), [Scala](http://www.scala-lang.org/), [SBT](https://github.com/harrah/xsbt/wiki/), [Ack](http://betterthangrep.com/), etc. I recommend using [Homebrew](http://mxcl.github.com/homebrew/) for installing this stuff. I also use [ITerm 2](http://www.iterm2.com/#/section/home) instead of Apple's Terminal.

NOTE: I'm seriously considering switching to [ZSH](https://github.com/robbyrussell/oh-my-zsh/) so you may see many changes to these files in the future.

## Setup

Pull the files down:
<pre>
$ git clone https://github.com/ddevore/dotfiles.git
</pre>

After pulling to your home `~` directory, you will need to setup the following softlinks.

<pre>
$ cd ~

$ ln -s ~/dotfiles/aliases .aliases

<i># NOTE: This files not included as you probably don't want my bash history anyways. ;-)</i>
$ ln -s ~/dotfiles/bash_history .bash_history 

$ ln -s ~/dotfiles/bash_profile .bash_profile
$ ln -s ~/dotfiles/bash_prompt .bash_prompt
$ ln -s ~/dotfiles/ctags .ctags
$ ln -s ~/dotfiles/sbtconfig .sbtconfig
$ ln -s ~/dotfiles/vim .vim
$ ln -s ~/dotfiles/vimrc .vimrc
$ ln -s ~/dotfiles/gitignore .gitignore
$ ln -s ~/dotfiles/gitconfig .gitconfig
</pre>

Since you probably don't want my vim backup, tmp, undo and view history, they are not included. You'll need to setup the following directories in the `~/dotfiles/vim` directory as I don't use the standard vim directory names."
<pre>
$ cd ~/dotfiles/vim
$ mkdir vim-backup
$ mkdir vim-tmp
$ mkdir vim-undo
$ mkdir vim-view
$ mkdir sessions
</pre>

I don't include my git user info in my gitconfig. I set them up as environment variables in `~/.secrets`. You will want to do the same.

<pre>
$ cd ~/dotfiles
$ vim secrets

<i># Add the following to the secrets file.</i>
# Set your git user info
export GIT_AUTHOR_NAME='Your Name'
export GIT_AUTHOR_EMAIL='you@domain.com'
export GIT_COMMITTER_NAME='Your Name'
export GIT_COMMITTER_EMAIL='you@domain.com'

<i># Add softlink so git will pick your credentials up.</i>
$ cd ~
$ ln -s ~/dotfiles/secrets .secrets
</pre>

## Vim Plugings

I use a lot of plugins for vim and manage them with [Vundle](https://github.com/gmarik/vundle/). It's a great vim bundle manager similar to [Pathogen](https://github.com/tpope/vim-pathogen/). You'll need to install Vundle to use the  plugins listed in my vimrc. I highly, highly recommend you read the Vundle documentation but this is what you need to do to get started:

<pre>
<i># This assumes you setup the .vim soflink listed above.</i>
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
</pre>

Next you will need to launch `vim` and run `:BundleInstall`.

**NOTE**: Some of the bundles require external software like Ack, Scala, etc. As mentioned above, I recommend you use Hombrew to install these.

## Colors

Colors can be a complicated thing in terminal land. In the `~/dotfiles/utilities` directory I've included some scripts that are pretty cool. They will print out how colors will look in your terminal.

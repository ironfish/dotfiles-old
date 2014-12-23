# dotfiles@ironfish

## Disclaimer

I'm a mac head so this while this configuration may work on other nixes, its OSX centric, and is a work in process. This means it will definitely change over time.

## OSX Clean Install

Do yourself a favor and don't upgrade, do a clean install.

### Create Bootable USB Drive

Thanks [Mashable](http://mashable.com/2014/10/17/clean-install-os-x-yosemite/)!

1. Opening up Disk Utility, it's in the Utilities folder in Applications.
2. Select your USB drive and click on the `Erase` tab. Select `Mac OS Extended (Journaled)` as the format type and keep the name as `OSXBoot`.
3. Click the `Erase` button. This will take a few minutes, but will erase your USB drive will be erased and format it with the proper file system.
4. Downloaded the latest installer (i.e. Yosemite) from the Mac App Store; use the following to create a bootable USB drive. (you will need at least 8 Gb to play with).
5. Run the following from terminal.

```bash
# assumes your usb drive is named OSXBoot and is mounted
$ sudo /Applications/Install\ OS\ X\ Yosemite.app/Contents/Resources/createinstallmedia --volume /Volumes/OSXBoot --applicationpath /Applications/Install\ OS\ X\ Yosemite.app --nointeraction
```

## Development Setup

### Xcode Install

1. Install Xcode from the Mac App Store.
2. Install command line tools with `xcode-select --install`

### Homebrew Install

[Homebrew](http://brew.sh) is pretty much the defacto standard for installing nix stuff on OSX. [Cask](http://caskroom.io), and [Cask Versions](https://github.com/caskroom/homebrew-versions) are awesome too.

```bash
# install homebrew
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# check the install
$ brew doctor
# install cask
$ brew install caskroom/cask/brew-cask
# install cask versions
$ brew tap caskroom/versions
```

### Languages

```bash
# install python stuff.
$ brew install python
$ pip install --upgrade setuptools
$ pip install --upgrade pip

# install java
$ brew cask install java

# install scala stuff
$ brew install scala --with-docs --with-src
$ brew install sbt
```

### Powerline

Power line is a statusline plugin for vim, bash, zsh, tmux, etc.

* [Powerline Source](https://github.com/powerline/powerline)
* [Powerline Docs](https://powerline.readthedocs.org/en/latest/)

```bash
$ pip install git+git://github.com/Lokaltog/powerline
```

Because we installed python w/ homebrew we can't user `--user` option @see [Installation on OSX](https://powerline.readthedocs.org/en/latest/installation/osx.html)

```bash
# used for various segments for powerline
$ pip install --upgrade psutil
```

### vim

```bash
# install macvim as main vim
$ brew install macvim --override-system-vim --with-luai
$ brew install ctags
```

### neovim

[neovim](http://neovim.org) is considered by some to be the next generation of vim.

```bash
$ brew install neovim
$ pip install --upgrade neovim
```

### tmux

```bash
$ brew install tmux
# required for tmux to work right on OSX
$ brew install reattach-to-user-namespace
```

### Apps and Utils

```bash
# much better than ack
$ brew install ag

# install git
$ brew install git

$ brew cask install bartender
$ brew cask install dropbox
$ brew cask install flowdock
$ brew cask install istat-menus
$ brew cask install iterm2
$ brew cask install skype
$ brew cask install sublime-text-dev
$ brew cask install vimr
$ brew cask install vlc
```

### Clone Repo

```bash
$ git clone https://github.com/ironfish/dotfiles.git
```

### Softlinks and Folders

```bash
$ cd ~
$ ln -s ~/dotfiles/bash/bash_aliases .bash_aliases
$ ln -s ~/dotfiles/bash/bash_profile .bash_profile
$ ln -s ~/dotfiles/bash/bash_prompt .bash_prompt
$ ln -s ~/dotfiles/vim/ctags .ctags

# neovim and vim share the same rc and directory
$ ln -s ~/dotfiles/nvim/ .vim
$ ln -s ~/dotfiles/nvim/nvimrc .vimrc
$ ln -s ~/dotfiles/nvim/ .nvim
$ ln -s ~/dotfiles/nvim/nvimrc .nvimrc

$ ln -s ~/dotfiles/git/gitconfig .gitconfig
$ ln -s ~/dotfiles/tmux/tmux.conf .tmux.conf
$ ln -s ~/dotfiles/config/ .config

# setup tmp directory and files
$ mkdir ~/dotfiles/tmp
$ cd ~/dotfiles/tmp
$ mkdir vim-backup
$ mkdir vim-tmp
$ mkdir vim-undo
$ mkdir vim-view
$ mkdir sessions
$ touch bash_history
$ touch nviminfo
$ touch nvimlog
$ touch viminfo
$ ln -s ~/dotfiles/tmp/bash_history .bash_history 
$ ln -s ~/dotfiles/tmp/nviminfo .nviminfo 
$ ln -s ~/dotfiles/tmp/nvimlog .nvimlog 
$ ln -s ~/dotfiles/tmp/viminfo .viminfo 

# setup secrets file
$ cd ~/dotfiles
$ vim secrets

# add the following to secrets
export GIT_AUTHOR_NAME='Your Name'
export GIT_AUTHOR_EMAIL='you@domain.com'
export GIT_COMMITTER_NAME='Your Name'
export GIT_COMMITTER_EMAIL='you@domain.com'

# add softlink so git will pick your credentials up
$ cd ~
$ ln -s ~/dotfiles/secrets .secrets
```

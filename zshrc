##############################################################
# Garey Salinas .zshrc file
# Export path
##############################################################
export PATH=$HOME/.local/bin
export PATH=$PATH:/usr/local/bin:/usr/local/sbin
export PATH=$PATH:/usr/bin:/usr/sbin
export PATH=$PATH:/sbin:/bin
##############################################################
# Basic config
##############################################################
export IPYTHONDIR=$HOME/.ipython
export ZSH=/home/garey/.oh-my-zsh
export EDITOR=/usr/bin/nvim
export TMPDIR=$HOME/.local/tmp
export TERM=xterm-256color
export OCTAVE_EXECUTABLE=/usr/bin/octave-cli
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
##############################################################
# Oh-my-zsh config
##############################################################
ZSH_THEME="robbyrussell"
HIST_STAMPS="mm/dd/yyyy"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
##############################################################
# oh-my-zsh plugins
##############################################################
plugins=( autopep8
          colored-man-pages
          debian
          extract
          go
          golang
          nmap
          pip
          python
          pylint
          tmux
          vi-mode
        )

fpath+=${ZDOTDIR:-~}/.zsh_functions
source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi
################################################
# This is a placeholder to source my alias file
################################################
[[ -r ~/.dotfiles/aliasrc ]] && source /home/garey/.dotfiles/aliasrc

# completion
autoload -U compinit
compinit

# Correction
#setopt correctall

autoload -U promptinit
promptinit

setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt autocd
setopt extendedglob

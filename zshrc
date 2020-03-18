##############################################################
# Garey Salinas .zshrc file
# Export path
##############################################################
export PATH=$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/miniconda/bin
export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:/usr/local/go/bin 
export PATH=$PATH:$HOME/.nimble/bin
export PATH=$PATH:/snap/bin
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
export GOPATH=$HOME/go
export OCTAVE_EXECUTABLE=/usr/bin/octave-cli
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
          git 
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
export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

################################################
# This is a placeholder to source my alias file
################################################
if [[ -r ~/.dotfiles/aliasrc ]]; then
   . ~/.dotfiles/aliasrc
fi

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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/garey/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/garey/miniconda/etc/profile.d/conda.sh" ]; then
        . "/home/garey/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/home/garey/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/garey/.sdkman"
[[ -s "/home/garey/.sdkman/bin/sdkman-init.sh" ]] && source "/home/garey/.sdkman/bin/sdkman-init.sh"


export GPG_TTY=$(tty)

##############################################################
# Garey Salinas .zshrc file
# Export path
##############################################################
export PATH=$HOME/.local/bin
export PATH=$PATH:/usr/local/bin:/usr/local/sbin
export PATH=$PATH:/usr/bin:/usr/sbin
export PATH=$PATH:/sbin:/bin
export PATH=$PATH:/usr/local/texlive/2020/bin/x86_64-darwin
##############################################################
# Basic config
##############################################################
export PROJECTS_DIR=$HOME/.local/projects
export DOTFILES_DIR=$HOME/.local/projects/dotfiles
export SHARE_DIR=$HOME/.local/share/
export IPYTHONDIR=$HOME/.ipython
export ZSH=$HOME/.oh-my-zsh
export EDITOR=nvim
export TMPDIR=$HOME/.local/tmp
export TERM=xterm-256color
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
##############################################################
# Oh-my-zsh config
##############################################################
ZSH_THEME="robbyrussell"
HIST_STAMPS="mm/dd/yyyy"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
BAUD=38400
##############################################################
# oh-my-zsh plugins
##############################################################
plugins=( autopep8
          colored-man-pages
          vi-mode
        )

fpath+=${ZDOTDIR:-~}/.zsh_functions
source $HOME/.oh-my-zsh/oh-my-zsh.sh

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
[[ -r $HOME/.local/projects/dotfiles/aliasrc ]] && source $HOME/.local/projects/dotfiles/aliasrc

# completion
autoload -U compinit
compinit

autoload -U promptinit
promptinit

setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt autocd
setopt extendedglob

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


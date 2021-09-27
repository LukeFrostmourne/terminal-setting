export LANG=en_US.UTF-8
export GOPATH=$HOME/Projects/go
#export GOOS=linux
export PATH=/usr/local/bin:$PATH:/usr/local/go/bin:$GOPATH/bin
export GO111MODULE=on

# Path to your oh-my-zsh installation.
export ZSH=".oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(osx git golang python)


POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time status command_execution_time)
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

alias k='kubectl'

source $ZSH/oh-my-zsh.sh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
  git
  vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

alias vim='lvim'
alias vi='lvim'
alias v='lvim'
alias ls='lsd'

# my scripts
export PATH=$HOME/.scripts/Discord/:$PATH
export PATH=$HOME/.scripts/android-studio/bin/:$PATH
export PATH=$HOME/.scripts/VSCode-linux-x64/:$PATH
export PATH=$HOME/.scripts/nasm-2.16.02rc1/:$PATH
export PATH=$HOME/.scripts/gf/:$PATH
export PATH=$HOME/.scripts/:$PATH

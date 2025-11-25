#!/bin/zsh

if [[ -d "$HOME/.oh-my-zsh" || -d /usr/share/oh-my-zsh ]]; then
  ZSH="$HOME/.oh-my-zsh"

  ZSH_THEME="headline"

  plugins=(git)

  ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
  if [[ ! -d $ZSH_CACHE_DIR ]]; then
    mkdir $ZSH_CACHE_DIR
  fi

  source $ZSH/oh-my-zsh.sh
fi

if [[ -d "$HOME/.local" ]]; then
  export PATH="$HOME/.local/bin:$PATH"
fi


if [[ -d /usr/share/nvm ]]; then
  source /usr/share/nvm/init-nvm.sh
fi

if [[ -d "$HOME/.zsh" ]]; then
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

if [[ command -v git ]]; then
  alias dotgit="/usr/bin/git --git-dir=$HOME/Documents/projects/dotfiles/ --work-tree=$HOME"
fi

if [[ command -v lazygit ]]; then
  alias lazydot='lazygit --git-dir=/home/aldipratama/Documents/projects/dotfiles/ --work-tree=/home/aldipratama'
fi

if [[ command -v bat ]]; then
  alias cat="bat --theme=base256"
fi

if [[ command -v eza ]]; then
  alias ls='eza --icons=always --color=always'
  alias lt='eza --icons=always --color=always -TF'
  alias la='eza --icons=always --color=always -a'
  alias lta='eza --icons=always --color=always -aTF'
  alias ll='eza --icons=always --color=always -l'
  alias lla="eza --icons=always --color=always -la"
  alias ltl="eza --icons=always --color=always -lTF"
  alias ltla="eza --icons=always --color=always -laTF"
else
  alias ls="ls --color=always"
  alias la="ls --color=always -la"
  alias ll="ls --color=always -l"
fi

alias cls="clear"

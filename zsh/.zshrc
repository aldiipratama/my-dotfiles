ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="headline"

plugins=(git)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

source /usr/share/nvm/init-nvm.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

alias dotgit="git --git-dir=$HOME/Documents/projects/dot"
export PATH="$HOME/.local/bin:$PATH"

alias dotgit='/usr/bin/git --git-dir=/home/aldipratama/Documents/projects/dotfiles/ --work-tree=/home/aldipratama'
alias lazydot='lazygit --git-dir=/home/aldipratama/Documents/projects/dotfiles/ --work-tree=/home/aldipratama'

alias cat="bat --theme=base256"
alias ls='eza --icons=always --color=always'
alias lt='eza --icons=always --color=always -TF'
alias la='eza --icons=always --color=always -a'
alias lta='eza --icons=always --color=always -aTF'
alias ll='eza --icons=always --color=always -l'
alias lla="eza --icons=always --color=always -la"
alias ltl="eza --icons=always --color=always -lTF"
alias ltla="eza --icons=always --color=always -laTF"
alias cls="clear"

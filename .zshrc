# oh my zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME=robbyrussell

plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias
alias vim="nvim"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# path
path+=('/home/brynn/.local/bin')

source ~/.zprofile

# alias setting ---------------------------------
alias vi="nvim"

alias mkcd=mkcd #mkdirとcdを一括で行う

alias l='ls'
alias la='ls -all'

#git関係のエイリアス
alias g='git'
alias gl='git log --oneline -10'
alias gs='git status'
alias ga='git add'
alias gch='git checkout'
alias gc='git commit'
alias gb='git branch'
alias gcp='git cherry-pick'
alias gsw='git branch | fzf --height 20% | xargs git checkout'

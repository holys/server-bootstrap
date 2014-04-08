
# My alias  

#modified command

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ping='ping -c 5'
alias more='less'
alias diff='colordiff'
alias df='df -h'
alias du='du -c -h'
alias la='ls -ahl'
alias vi="vim"
alias wrt="ssh root@192.168.1.1"
#new conmand 
alias http='python -m SimpleHTTPServer'
alias ys='sudo yaourt -S'
alias pcs='sudo pacman -S'
alias syy='sudo pacman -Syy'
alias syu='sudo pacman -Syu'
alias pss='sudo pacman -Ss'
alias pq='sudo pacman -Q'
alias pr='sudo pacman -R'
alias pg='ps aux |grep -v grep |grep $1'
alias ka='sudo sudo killall $1'
alias gcc='gcc -Wall'
alias vizsh='vim ~/.oh-my-zsh/custom/alias.zsh'
alias free='free -h'

# alias for vagrant 
alias v='vagrant'
alias vs='vagrant status'
alias vd='vagrant destroy'
alias vp='vagrant package'
alias vpv='vagrant provision'
alias vrl='varant reload'
alias vr='vagrant resume'
alias vssh='vagrant ssh'
alias vsp='vagrant suspend'
alias vu='vagrant up'
alias vbl='vagrant box list'
alias vbr='vagrant box remove'
alias vbrp='vagrant box repackage'


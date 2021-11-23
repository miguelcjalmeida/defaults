alias gits='git status'
alias gitl='git log --graph --all --oneline'
alias gitd='git diff'
alias gg='git fetch && git fetch --tags -f && git fetch origin --prune && git status && gitk --all -r'
alias tf='terraform'
alias journal='winpty jrnl'

if [ -e $HOME/secrets.bashrc ]; then
    source $HOME/secrets.bashrc
fi

#Git status options
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

#path where you are
PS1='\n\[\033[35m\]' 

#git notations
PS1="$PS1\[\033[33m\]\w\[\033[36m\]`__git_ps1`"

#time
PS1="$PS1 \[\033[35m\][\A]"

#input line
PS1="$PS1\n\[\033[0m\]$ "
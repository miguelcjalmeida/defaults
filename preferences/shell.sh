#Git status options
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWDIRTYSTATE=
export GIT_PS1_SHOWUNTRACKEDFILES=
export GIT_PS1_SHOWUPSTREAM="auto"

#jump one line
PS1='\n\[\033[35m\]' 

#path where you are
PS1="$PS1\[\033[33m\]\w "

#git notations
PS1="$PS1\033[36m\]\`__git_ps1\`"

#time
PS1="$PS1 \[\033[35m\] \`date '+[%H:%M:%S]'\`"

#input line
PS1="$PS1\n\[\033[33m\]$\[\033[0m\] "
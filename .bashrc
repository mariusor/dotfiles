# If not running interactively, don't do anything
[[ $- != *i* ]] && return

umask 002
alias ls='ls --color=auto'

[[ -f /etc/profile ]] && . /etc/profile

export EDITOR="/usr/bin/vim"
export CVS_RSH=ssh
PATH=$PATH:/opt/java/jre/bin/

test -r "/usr/share/git/completion/git-prompt.sh"  && . "/usr/share/git/completion/git-prompt.sh"
test -r "/usr/share/gentoo-bashrc/bashrc" && . "/usr/share/gentoo-bashrc/bashrc"

if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
    PS1='\n\[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[0;39m\] \[\e[0;39m\]\n$ '
fi

alias phpdebug="sudo XDEBUG_CONFIG='idekey=session_name' php"

export GOPATH=~/go

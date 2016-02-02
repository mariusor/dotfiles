# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LC_ALL="en_US.UTF-8"
umask 002
alias ls='ls --color=auto'

[[ -f /etc/profile ]] && . /etc/profile

export EDITOR="/usr/bin/vim"
export CVS_RSH=ssh
PATH=$PATH:/usr/local/aws/bin:/opt/java/jre/bin:~/bin

test -r "/usr/share/git/completion/git-prompt.sh"  && . "/usr/share/git/completion/git-prompt.sh"
test -r "/usr/share/gentoo-bashrc/bashrc" && . "/usr/share/gentoo-bashrc/bashrc"

if [[ ${EUID} == 0 ]] ; then
    PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
    PS1='\n[\t] $(es=$?; if [ $es -ne 0 ]; then echo $es" "; fi)\[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[0;39m\] \[\e[0;39m\]\n$ '
fi

alias phpdebug="sudo XDEBUG_CONFIG='idekey=session_name' php"
# Start the gpg-agent if not already running
if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
    gpg-connect-agent /bye >/dev/null 2>&1
fi

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="${HOME}/.gnupg/S.gpg-agent.ssh"
fi


GPG_TTY=$(tty); export GPG_TTY
SSH_AUTH_SOCK=~/.gnupg/S.gpg-agent.ssh; export SSH_AUTH_SOCK;
#unset SSH_ASKPASS

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

export GOPATH=~/go
alias remind='notify-send "$2" | at now + $1 min &>/dev/null'

export WEBIDE_JDK="/lib/jvm/default-runtime/"

complete -C '/usr/bin/aws_completer' aws

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

umask 002
alias ls='ls --color=auto'

[[ -f /etc/profile ]] && . /etc/profile
export LC_ALL="en_US.UTF8"
export LANG="en_US"
export LANGUAGE="en_US.UTF-8"
export LC_LANG="en_US.UTF-8"
export LC_MONETARY="de_DE.UTF-8"
export LC_NUMERIC="ro_RO.UTF-8"
export LC_MEASUREMENT="ro_RO.UTF-8"
export LC_TIME="ro_RO.UTF-8"

export TERMINAL="/usr/bin/termite"
if [ -n "$TMUX" ]; then
    export TERM="screen-256color"
else
    export TERM="xterm-256color"
fi
export EDITOR="/usr/bin/nvim"
#export SHELL="/usr/bin/fish"
export CVS_RSH=ssh
export PATH=$PATH:/usr/local/aws/bin:~/.local/bin

test -r "/usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh" && . "/usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh"

alias phpdebug="sudo XDEBUG_CONFIG='idekey=session_name' php"

GPG_TTY=$(tty); export GPG_TTY
unset SSH_ASKPASS

# Refresh gpg-agent tty in case user switches into an X session
if [ "$EUID" -ne 0 ]; then
    gpg-connect-agent updatestartuptty /bye >/dev/null
fi

export GOPATH=~/.local/share/go
#export GOROOT=~/.local/share/go

export WEBIDE_JDK="/lib/jvm/default-runtime/"
complete -C '/usr/bin/aws_completer' aws

if [ which rbenv >/dev/null 2>&1 ]; then
    eval "$(rbenv init -)"
fi

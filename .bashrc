# If not running interactively, don't do anything
[[ $- != *i* ]] && return

umask 002
alias ls='ls --color=auto'
alias yy='yes | yay'

# bash stuff
HISTFILESIZE=1000000
HISTSIZE=1000000
HISTCONTROL=ignoreboth
HISTTIMEFORMAT='%F %T '
PROMPT_COMMAND='history -a'

shopt -s cmdhist
shopt -s histappend

[[ -f /etc/profile ]] && . /etc/profile
export LC_ALL="en_US.UTF-8"
export LANG="en_US"
export LANGUAGE="en_US.UTF-8"
export LC_LANG="en_US.UTF-8"
export LC_MONETARY="de_DE.UTF-8"
export LC_NUMERIC="de_DE.UTF-8"
export LC_MEASUREMENT="de_DE.UTF-8"
export LC_TIME="de_DE.UTF-8"

export GOPATH=~/.local/share/go
#export GOROOT=~/.local/share/go

export TERMINAL="/usr/bin/termite"
if [ -n "$TMUX" ]; then
    export TERM="screen-256color"
else
    export TERM="xterm-256color"
fi
export EDITOR="nvim"
export BROWSER="qutebrowser"
export PATH=$PATH:/usr/local/aws/bin:~/.local/bin:$GOPATH/bin
if [ -z "$MC_TMPDIR" ] ; then # check for mc
    case "$TERM" in
        xterm*|rxvt*|screen*) # not sure about this
            ;;
        *)
            ;;
    esac
fi
function _update_ps1() {
    if [[ -x /usr/bin/powerline-go ]]; then
        PS1="$(/usr/bin/powerline-go -colorize-hostname -modules 'cwd,user,host,ssh,gitlite,jobs,ssh,exit,root' -priority 'host,root,cwd-path,cwd,user,ssh,jobs,exit' -max-width 0 -error $?)"
    fi
}
if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#test -x $(which madonctl) && source <(madonctl completion bash)
#test -x $(which gopass) && source <(gopass completion bash)

#alias phpdebug="sudo XDEBUG_CONFIG='idekey=session_name' php"

GPG_TTY=$(tty); export GPG_TTY
unset SSH_ASKPASS

# Refresh gpg-agent tty in case user switches into an X session
if [ "$EUID" -ne 0 ]; then
    gpg-connect-agent updatestartuptty /bye >/dev/null
fi

export WEBIDE_JDK="/lib/jvm/default-runtime/"
complete -C '/usr/bin/aws_completer' aws

#if [ which rbenv >/dev/null 2>&1 ]; then
#    eval "$(rbenv init -)"
#fi
if [ -n "${SWAYSOCK}" ]; then
    export QT_QPA_PLATFORM=wayland
    export GDK_BACKEND=wayland
    export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
    export QT_AUTO_SCREEN_SCALE_FACTOR=0
fi

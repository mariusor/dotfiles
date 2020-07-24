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

#export GOPATH=~/.local/share/go
#export GOROOT=~/.local/share/go

#export TERMINAL="/usr/bin/termite"
if [ -n "$TMUX" ]; then
    export TERM="screen-256color"
else
    export TERM="xterm-256color"
fi
export EDITOR="nvim"
export BROWSER="firefox-developer-edition"
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
    if [[ -x $(which powerline-go 2>/dev/null) ]]; then
        PS1="$(powerline-go -colorize-hostname -modules 'cwd,user,host,ssh,gitlite,jobs,ssh,exit,root,terraform-workspace,venv' -priority 'host,root,cwd-path,cwd,user,ssh,jobs,exit' -max-width 0 -error $?)"
    fi
}
if [ "$TERM" != "linux" -a "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#test -x `which madonctl 2>/dev/null` && source <(madonctl completion bash)
#test -x `which gopass 2>/dev/null` && source <(gopass completion bash)

GPG_TTY=$(tty); export GPG_TTY
unset SSH_ASKPASS

# Refresh gpg-agent tty in case user switches into an X session
if [ "$EUID" -ne 0 ]; then
    gpg-connect-agent updatestartuptty /bye >/dev/null
fi

which aws2_completer 2>/dev/null && complete -C $(which aws2_completer) aws2

if [ -n "${SWAYSOCK}" ]; then
    export DMENU_COMMAND="dmenu -p '> ' -f -nf '#d7d7d5' -nb '#232729' -sb '#585858' -sf '#bcbcbc' -i -fn 'xos4 Terminus:size=12'"
    export LOCK_COMMAND="/usr/bin/swaylock -i ~/Pictures/wallpapers/micleusanu-blur.jpg --indicator-radius=80 -c 222222"
    alias mpv='mpv --gpu-context=waylandvk'
fi

test -f ~/.bashrc.$(hostname) && source ~/.bashrc.$(hostname)

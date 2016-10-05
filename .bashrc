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
export PATH=$PATH:/usr/local/aws/bin:/opt/java/jre/bin:~/.local/bin:~/.gem/ruby/2.3.0/bin

test -r "/usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh" && . "/usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh"

alias phpdebug="sudo XDEBUG_CONFIG='idekey=session_name' php"
# Start the gpg-agent if not already running
#if ! pgrep -x -u "${USER}" gpg-agent >/dev/null 2>&1; then
#    gpg-connect-agent /bye >/dev/null 2>&1
#fi

# Set SSH to use gpg-agent
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="/run/user/$(id -u)/gnupg/S.gpg-agent.ssh"
fi


GPG_TTY=$(tty); export GPG_TTY
unset SSH_ASKPASS

# Refresh gpg-agent tty in case user switches into an X session
gpg-connect-agent updatestartuptty /bye >/dev/null

export GOPATH=~/.local/share/go

export WEBIDE_JDK="/lib/jvm/default-runtime/"
complete -C '/usr/bin/aws_completer' aws


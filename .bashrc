# If not running interactively, don't do anything
[[ $- != *i* ]] && return

umask 002
alias ls='ls --color=auto'
alias yy='yes | yay'
alias mc='mc --nosubshell'

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
export GOPROXY=proxy.golang.org,direct

if [ -n "$TMUX" ]; then
    export TERM="screen-256color"
else
    export TERM="xterm-256color"
fi
export TERMINAL="/usr/bin/foot"
export EDITOR="nvim"
export BROWSER="firefox-developer-edition"
export PATH=~/.local/bin:$GOPATH/bin:$PATH

if [ -z "$MC_TMPDIR" ] ; then # check for mc
    case "$TERM" in
        xterm*|rxvt*|screen*) # not sure about this
            ;;
        *)
            ;;
    esac
fi
INTERACTIVE_BASHPID_TIMER="/tmp/${USER}.START.$$"
PS0='$(echo $SECONDS > "$INTERACTIVE_BASHPID_TIMER")'
function _update_ps1() {
    if [[ -x $(which powerline-go 2>/dev/null) ]]; then
      local __ERRCODE=$?
      local __DURATION=0
      if [ -e $INTERACTIVE_BASHPID_TIMER ]; then
            local __END=$SECONDS
            local __START=$(cat "$INTERACTIVE_BASHPID_TIMER")
            __DURATION="$(($__END - ${__START:-__END}))"
            rm -f "$INTERACTIVE_BASHPID_TIMER"
      fi

      if [[ $(pwd) == *"workspace"* ]]; then
          PS1="$(powerline-go -colorize-hostname -modules 'cwd,user,host,ssh,gitlite,jobs,ssh,root,exit' -modules-right 'aws,docker,kube,duration' -priority 'host,root,cwd,cwd-path,user,jobs,exit,ssh' -newline -cwd-mode plain -duration-min 5 --duration $__DURATION -shell bash -hostname-only-if-ssh -error $__ERRCODE )"
      else
          PS1="$(powerline-go -colorize-hostname -modules 'cwd,user,host,ssh,gitlite,jobs,ssh,root,exit' -modules-right 'duration' -priority 'host,root,cwd,cwd-path,user,jobs,exit,ssh' -cwd-mode plain -duration-min 5 --duration $__DURATION -shell bash -hostname-only-if-ssh -error $__ERRCODE )"
      fi
    fi
}
_urlencode() {
	local length="${#1}"
	for (( i = 0; i < length; i++ )); do
		local c="${1:$i:1}"
		case $c in
			%) printf '%%%02X' "'$c" ;;
			*) printf "%s" "$c" ;;
		esac
	done
}

osc7_cwd() {
	printf '\e]7;file://%s%s\e\\' "$HOSTNAME" "$(_urlencode "$PWD")"
}
prompt_marker() {
    printf '\e]133;A\e\\'
}
PROMPT_COMMAND=osc7_cwd
PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }prompt_marker
if [ "$TERM" != "linux" -a "$TERMINAL_EMULATOR" != "JetBrains-JediTerm" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

fi

#test -x `which madonctl 2>/dev/null` && source <(madonctl completion bash)
#test -x `which gopass 2>/dev/null` && source <(gopass completion bash)

#unset SSH_ASKPASS
unset SSH_AGENT_PID
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"; export SSH_AUTH_SOCK
fi
# Refresh gpg-agent tty in case user switches into an X session
if [ "$EUID" -ne 0 ]; then
    GPG_TTY=$(tty); export GPG_TTY
    gpg-connect-agent updatestartuptty /bye >/dev/null
fi

which aws2_completer 2>/dev/null && complete -C $(which aws2_completer) aws2

[[ -f ~/.bashrc.$(uname -n) ]] && source ~/.bashrc.$(uname -n)

if [ -n "${SWAYSOCK}" ]; then
    export LOCK_COMMAND="/usr/bin/swaylock --indicator-radius=80 -c 222222"
    source ~/.config/wayland.env
fi


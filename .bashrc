. /etc/profile

if [ -f /usr/share/gentoo-bashrc/bashrc ]; then
    # archlinux aur gentoo bash.rc file
    source /usr/share/gentoo-bashrc/bashrc
fi

export PATH="~/bin:$PATH"
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w$(__git_ps1 ":%s ")\$\[\033[00m\] '
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=r600

alias phpunitdbg="sudo -u http XDEBUG_CONFIG='idekey=eclipse_debug' /usr/bin/phpunit"


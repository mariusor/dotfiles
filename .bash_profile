#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

complete -C '/usr/local/aws/bin/aws_completer' aws
export PATH=/usr/local/aws/bin:$PATH

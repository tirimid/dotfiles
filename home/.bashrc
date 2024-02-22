case $- in
	*i*)
		;;
	*)
		return
		;;
esac

HISTCONTROL=ignoreboth
HISTSIZE=100
HISTFILESIZE=1000

shopt -s checkwinsize
shopt -s histappend
shopt -s globstar

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# alias some basic commands to colored variants.
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# load custom aliases.
if [ -f ~/.aliases ]
then
	. ~/.aliases
fi

# assume cross compilers and utils will be at `/opt/cross`.
# if not, you should add a symlink to cross build at `/opt/cross`.
export PATH="$PATH:/opt/cross/bin"

PS1="\033[1;34m\W\033[0m "

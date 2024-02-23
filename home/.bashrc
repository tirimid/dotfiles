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

. /etc/profile

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

# this setup uses fbterm+tmux in TTY.
# set 0 to disable.
CONF_TTY_FBTERM_TMUX=1
if [[ $CONF_TTY_FBTERM_TMUX -eq 1 ]]
then
	# kind of a hacky way to enter fbterm, then tmux in fbterm.
	if [[ $TTY_IN_FBTERM -ne 1 ]]
	then
		export TTY_IN_FBTERM=1
		exec fbterm
	fi

	if [[ $TTY_IN_TMUX -ne 1 ]]
	then
		export TTY_IN_TMUX=1
		exec tmux
	fi
fi

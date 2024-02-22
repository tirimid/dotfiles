case $- in
	*i*)
		;;
	*)
		return
		;;
esac

HISTSIZE=100
SAVEHIST=1000

autoload -Uz compinit && compinit
autoload -U colors && colors

# inputrc case insensitivity doesn't work on zsh, set manually.
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

. /etc/profile

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# zsh adds a bunch of aliases for some reason, remove them.
unalias -m "*"

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

PS1="%F{012}%c%F{reset} "

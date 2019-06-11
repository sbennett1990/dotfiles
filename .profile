# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:$HOME/.cabal/bin:.

PKG_PATH=http://mirrors.mit.edu/pub/OpenBSD/$(uname -r)/packages/$(uname -p)/\
:http://ftp4.usa.openbsd.org/pub/OpenBSD/$(uname -r)/packages/$(uname -p)/

PS1="[$USER@$(hostname -s)] $ "

PS2=" > "

export PS1 PS2 PATH HOME TERM PKG_PATH

# Aliases
alias l='ls -h'
alias ll='l -l'
alias la='l -A'
alias lla='l -lA'
alias c='clear'
alias lo='exit'
alias re='. $HOME/.profile'

# Fat-finger corrections
alias daos='doas'
alias dosa='doas'
alias whcih='which'
alias whihc='which'

# Attempt to load my function definitions
if [[ -r $HOME/.functions ]]; then
       . $HOME/.functions
fi

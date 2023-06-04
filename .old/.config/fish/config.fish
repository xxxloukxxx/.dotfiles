### Fish 

set fish_greeting

export EDITOR=micro
export VISUAL=micro

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'

alias l="ls -lh"
alias bat="batcat"
alias du="du -h"
alias df="df -h"

alias ainst="sudo apt install"
alias aremove="sudo apt remove"

alias edit_config="micro ~/.config/bspwm/bspwmrc  ~/.config/sxhkd/sxhkdrc  ~/.config/fish/config.fish ~/.config/polybar/config.ini ~/.Xresources"

alias maj="sudo apt-get -y -qq update && sudo apt-get -y -qq full-upgrade && sudo apt-get -y -qq autoremove && sudo aptitude -y autoclean && sudo aptitude -y -q purge && sudo aptitude -y -q purge ~c"

export NNN_OPTS='de'
export NNN_FIFO=/tmp/nnn.fifo
export NNN_PLUG='o:fzopen;m:mocq;c:fzcd;p:preview-tui'

fzf_configure_bindings --git_status=\ez --git_log=\el --directory=\cf --variables=
 

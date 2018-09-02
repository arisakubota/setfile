#!/bin/bash
###color
PS1="\[\033[36m\]\h\[\033[0m\]\[\033[33m\]\W\[\033[0m\]\[\033[36m\]\u\[\033[0m\] $"
###COLOR definition
export LSCOLORS=hxfxcxdxbxegedabagacad

###shell from vim
[[ -n "$VIMRUNTIME" ]] && PS1="(VIM) :\[\033[36m\]\h\[\033[0m\]\[\033[33m\]\W\[\033[0m\]\[\033[36m\]\u\[\033[0m\] $"

###alias
alias root='root -l'
alias ls='ls -G'

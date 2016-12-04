export CLICOLOR=1
#export LSCOLORS="exfxcxdxbxegedabagacad" #Clear background
export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx" #Dark background

if which nvim; then export EDITOR=nvim
elif which vim; then export EDITOR=vim
else export EDITOR=vi
fi
export VISUAL=$EDITOR

export HISTSIZE=10000
export SAVEHIST=10000

HISTFILE=~/.bash_history

#bind '"\e^[[D": backward-word'
#bind '"\e^[[C": forward-word'
#bind '"\e[5D": beginning-of-line'
#bind '"\e[5C": end-of-line'
#bind '"\e[3~": delete-char'
#bind '"\e^N": newtab'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
if [ -x /usr/bin/lesspipe ]
then eval "$(SHELL=/bin/sh lesspipe)"
fi

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]
then debian_chroot=$(cat /etc/debian_chroot)
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix
then
  if [ -f /usr/share/bash-completion/bash_completion ]
  then source /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]
  then source /etc/bash_completion
  fi
fi

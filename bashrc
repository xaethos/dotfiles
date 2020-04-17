# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

### Xaethos dotfiles setup start ###

# shortcut to this dotfiles path is $DOTHOME
export DOTHOME="$HOME/dotfiles"
export PROJECTS="$HOME/workspace"

# use .prelocalrc for exports/configuration local to this system.
if [[ -a $HOME/.prelocalrc ]]
then
  source $HOME/.prelocalrc
fi

source "$DOTHOME/sh/config.sh"
source "$DOTHOME/sh/path.sh"
source "$DOTHOME/bash/config.bash"
source "$DOTHOME/bash/aliases.bash"
source "$DOTHOME/bash/colorize.bash"
source "$DOTHOME/bash/prompt.bash"

# use .localrc for exports/configuration local to this system.
if [[ -a $HOME/.localrc ]]
then
  source $HOME/.localrc
fi

### Xaethos dotfiles setup end ###

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

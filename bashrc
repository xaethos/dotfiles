# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

### Source Bash config files ###

DOTHOME="$HOME/.dotfiles"

# use .prelocalrc for exports/configuration local to this system.
if [[ -a $HOME/.prelocalrc ]]
then source $HOME/.prelocalrc
fi

source "$DOTHOME/sh/config.sh"
source "$DOTHOME/sh/path.sh"
source "$DOTHOME/bash/config.bash"
source "$DOTHOME/bash/aliases.bash"
source "$DOTHOME/bash/colorize.bash"
source "$DOTHOME/bash/prompt.bash"

# use .localrc for exports/configuration local to this system.
if [[ -a $HOME/.localrc ]]
then source $HOME/.localrc
fi

### Source Bash config files end ###

function append_path() {
  if [ -d $1 ]
  then
    PATH="$PATH:$1"
  fi
}

__OLD_PATH=$PATH
PATH=""

append_path "/usr/local/bin"
append_path "/usr/local/sbin"
append_path "$HOME/bin"
append_path "$DOTHOME/bin"

PATH="$PATH:$__OLD_PATH"
unset __OLD_PATH

append_path "$HOME/.rvm/bin"

export PATH=${PATH#:}
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

NEW_PATH=""

append_path() {
  if [ -d $1 ]
  then
    NEW_PATH="$NEW_PATH:$1"
  fi
}

append_path "/usr/local/bin"
append_path "/usr/local/sbin"
append_path "$HOME/bin"
append_path "$DOTHOME/bin"

NEW_PATH="$NEW_PATH:$PATH"

append_path "$HOME/.rvm/bin"

export PATH=${NEW_PATH#:}
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

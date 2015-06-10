function append_path() {
  if [ -d $1 ]
  then
    PATH="$PATH:$1"
  fi
}

__OLD_PATH=$PATH
PATH=""


## Local binaries
append_path "/usr/local/bin"
append_path "/usr/local/sbin"
append_path "$HOME/bin"
append_path "$DOTHOME/bin"

## Homebrew
append_path "$HOMEBREW_PREFIX/bin"

## Old PATH
PATH="$PATH:$__OLD_PATH"
unset __OLD_PATH

## Go
append_path "$GOPATH/bin"

## Android
append_path "$ANDROID_HOME/tools"
append_path "$ANDROID_HOME/platform-tools"

export PATH=${PATH#:}
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

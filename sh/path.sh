function append_path() {
  if [ -d $1 ]
  then
    PATH="$PATH:$1"
  fi
}

__OLD_PATH=$PATH
PATH=""


## Python stuff
append_path "/Library/Frameworks/Python.framework/Versions/3.4/bin"

## Local binaries
append_path "/usr/local/bin"
append_path "/usr/local/sbin"
append_path "$HOME/bin"
append_path "$DOTHOME/bin"

## Homebrew
if [ -d $HOMEBREW_PREFIX ]
then
  append_path "$HOMEBREW_PREFIX/bin"
fi

## Old PATH
PATH="$PATH:$__OLD_PATH"
unset __OLD_PATH

## RVM
#append_path "$HOME/.rvm/bin"

## Go
if [ -d $GOPATH ]
then
  append_path "$GOPATH/bin"
fi

## Android
if [ -d $ANDROID_HOME ]
then
  append_path "$ANDROID_HOME/tools"
  append_path "$ANDROID_HOME/platform-tools"
fi

export PATH=${PATH#:}
export MANPATH="/usr/local/man:/usr/local/git/man:$MANPATH"

Xae's dotfiles
==============
Xaethos's own dotfiles: ever changing.

Setup checklist
---------------
Make sure you have created `$HOME/workspace`. Additionally, if you have the
following in your system, add the corresponding lines to `.prelocalrc`

### [Homebrew](http://brew.sh/)
Homebrew likes making `/usr/local` into a git repo, which I don't like, so
running their usual installation script is not the way to go. Modify the script
to install to `/usr/local/homebrew`, then add to `.prelocalrc`:

```sh
export HOMEBREW_PREFIX="/usr/local/homebrew"
```

While you're at it, here're some brews you prolly want:

```sh
brew install node python go
```

### Android SDK

```sh
export ANDROID_HOME="$HOME/Library/Android/sdk"
```

### Go lang
Make sure you've created the dirctory

```sh
export GOPATH="$HOME/workspace/golang"
```

Install
-------
- Clone the repo somewhere.

```sh
git clone git@github.com:xaethos/dotfiles.git ~/workspace/dotfiles
```

- Link directory, if needed

```sh
ln -s workspace/dotfiles ~/.dotfiles
```

- Get git submodules

```sh
cd ~/.dotfiles
git submodule update --init
```

- Run install script.
  This will symlink the appropriate files in `.dotfiles` to your home directory.
  Everything is configured and tweaked within `~/.dotfiles`, though.

```sh
cd ~/.dotfiles
./install
```

- Install Vundle plugins

```sh
vim -c ':BundleInstall'
```

Components
----------
There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `rake install`.
- **topic/\*.completion.sh**: Any files ending in `completion.sh` get loaded
  last so that they get loaded after we set up zsh autocomplete functions.

Thanks
------
I forked [Zach Holman's dotfiles](https://github.com/holman/dotfiles). Much of
the structure of my dotfiles are product of his, even though my setup has
differed over time.

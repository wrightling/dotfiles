# my dotfiles, based on [Holman's system of organization](https://github.com/holman/dotfiles)

Check Zach's excellent post on the [philosophy](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)
behind posting dotfiles as well.

## install

Run this:

```sh
git clone https://github.com/wrwright/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

`dot` is a simple script that installs some dependencies, sets sane OS X
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## problems

### read: Illegal option
If you run into 'read: Illegal option' errors with script/bootstrap, this
is most likely because your system is sym-linking 'sh' to 'dash'.  The following
command will show any symbolic link assigned to /bin/sh:

    ls -l /bin/sh

It may be simplest to remove this link and instead link to bash, at least
temporarily.

    sudo rm /bin/sh
    sudo ln -s bash /bin/sh

## topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

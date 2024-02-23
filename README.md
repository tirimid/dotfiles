# dotfiles

## What is this?

My dotfiles and other configs for some programs I use.

## Dependencies

System / software dependencies are:

* Hermit font
* FBTerm
* tmux

Some "soft" dependencies are not listed. Check the aliases to see if you need to
remove any.

My dotfiles also assume that you do not have a display manager. Unmodified, they
will only work with the default TTY, as the shell init scripts try to only open
FBTerm and tmux on shell entry in TTY.

## How to use my dotfiles

Either copy them manually or run:

```
$ make install
```

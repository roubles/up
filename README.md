# up

A simple bash function to navigate your present working directory.

```
Usage: up [-] <n>

Example:
$ pwd
$ /a/b/c/d/e/f
$ up 2
$ pwd
$ /a/b/c/d

Example:
$ pwd
$ /a/b/c/d/e/f
$ up -4
$ pwd
$ /a/b/c/d
```

## Install

```
$ git clone
$ cd up
$ make install
```

Then add 'source ~/.local/bin/up.sh' to your .bashrc file or .bash_profile file.

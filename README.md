# up

A simple bash function to navigate your present working directory. Using 'up' you can go up your directory tree from both directions. Using a positive number, you go up as usual, from the left. Using a negative number, you go up from the right.

```
Usage: up <[-]n>

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
$ git clone https://github.com/roubles/up.git
$ cd up
$ make install
```

Then add 'source ~/.local/bin/up.sh' to your .bashrc file or .bash_profile file.

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

Or simply, add the following code to your .bashrc file or .bash_profile file:
```
function up() {
    UP=$1

    if [[ $UP =~ ^[\-0-9]+$ ]]; then
        if ((UP<0)); then
            UP=${UP#-}
            cd $(echo $PWD | cut -d/ -f1-$((UP+1)))
        else
            cd $(printf "%0.s../" $(seq 1 ${UP}));
        fi
    fi
}
```

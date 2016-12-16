# Keep path clean using zsh magic
typeset -U path
path+=(/usr/local/sbin)
path+=($HOME/.local/bin)
path+=($HOME/bin)
path+=($HOME/.cask/bin)

# Emacs
export TERM="xterm-256color"
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -n -c"
export GIT_EDITOR="$EDITOR"
export SUDO_EDITOR="$EDITOR"

# make
export MAKEFLAGS=-j8

# Set PATH from path
export PATH

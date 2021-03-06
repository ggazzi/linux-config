#!/bin/bash
# shellcheck source=/dev/null

LANG=de_DE.UTF-8

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Use Vim as default command-line editor
export EDITOR=vim
export VISUAL=vim

# Be more polite
alias please=sudo

# Colorize the prompt (requires the cuteprompt package)
source /usr/share/bash-cuteprompt/cuteprompt-set.sh

# Set up the path
PATH=$HOME/.local/bin:$PATH

# Allow '**' to recursively search for files when globbing
shopt -s globstar

# Useful aliases
alias open="xdg-open"


# Source everything from ~/.bashrc.d
if [ -d ~/.bashrc.d ]
then
  for file in ~/.bashrc.d/*
  do
    if [ -f "$file" ]
    then
      source "$file"
    fi
  done
fi

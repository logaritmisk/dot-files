#!/bin/bash

alias ..="cd .."

alias ll="ls -al"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"

alias e="emacsclient -na $EDITOR"

alias wget="wget --content-disposition"

alias phpcs="php $HOME/Temporary/PHP_CodeSniffer-1.3.3/scripts/phpcs --standard=Drupal --report-width=`tput cols`"

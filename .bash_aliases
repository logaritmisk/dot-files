#!/bin/bash

alias ..="cd .."

alias ll="ls -al"

alias grep="grep --color=auto"
alias egrep="egrep --color=auto"

alias e="emacsclient -na $EDITOR"

alias wget="wget --content-disposition"

alias phpcs="phpcs --standard=Drupal --report-width=`tput cols`"
alias phpcs-all="phpcs --extensions=php,module,inc,install,test,profile,theme,js,css,info,txt"

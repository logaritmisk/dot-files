#!/bin/bash


# Get prefix if brew is installed.
_prefix=$(which brew > /dev/null && brew --prefix || echo '')


# Exports.
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export CLICOLOR=true

export VISUAL=emacs
export EDITOR=emacs

if locale -a 2> /dev/null | grep -i 'sv_SE.UTF' > /dev/null; then
  export LANG=sv_SE.UTF-8
  export LC_ALL=sv_SE.UTF-8
fi


# Bash colors.
export color_none='\e[0m'
export color_white='\e[1;37m'
export color_black='\e[0;30m'
export color_blue='\e[0;34m'
export color_light_blue='\e[1;34m'
export color_green='\e[0;32m'
export color_light_green='\e[1;32m'
export color_cyan='\e[0;36m'
export color_light_cyan='\e[1;36m'
export color_red="\e[0;31m"
export color_light_red='\e[1;31m'
export color_purple='\e[0;35m'
export color_light_purple='\e[1;35m'
export color_brown='\e[0;33m'
export color_yellow='\e[1;33m'
export color_gray='\e[0;90m'
export color_light_gray='\e[0;37m'


# Bash completion.
test -f "${_prefix}/etc/bash_completion" && . "${_prefix}/etc/bash_completion"


# Date piece.
DATE_PIECE="\[${color_gray}\]\$(date '+%a %H:%M:%S')\[${color_none}\]"

# Path piece.
PATH_PIECE="\$(echo \${PWD/\$HOME/\~} | sed -E 's/.*((\/.*){'\$(((\$(tput cols) - 64) / 10))'})/..\1/')"

# Git piece, but only if __git_ps1 is available.
if type -t __git_ps1 > /dev/null; then
  GIT_PS1_SHOWDIRTYSTATE=true
  GIT_PIECE='$(__git_ps1 " \[$color_yellow\]($(tmp=`git rev-parse --show-toplevel 2> /dev/null` && basename $tmp):%s)\[$color_none\]")'
fi

# Bash prompt.
export PS1="${DATE_PIECE} \u\[${color_green}\]@\[${color_none}\]\h \[${color_gray}\]${PATH_PIECE}${GIT_PIECE:-""}\n\[${color_green}\]\$\[${color_none}\] "


# Bash alias.
test -f ~/.bash_aliases && . ~/.bash_aliases

# Load all extensions.
for f in ~/.ext/*; do test -f "$f" && . "$f"; done

# No ._ files when copying files.
export COPYFILE_DISABLE=true
export COPY_EXTENDED_ATTRIBUTES_DISABLED=true


# Fortune, Cowsay/Ponysay, & Lolcat.
if [[ $TERM != 'dumb' ]]; then
  if which fortune > /dev/null; then
    COMMAND="fortune -s"
    lol=true
    if which cowsay > /dev/null; then
      o='bdgpstwy'
      c=( $(ls `brew --prefix cowsay`/share/cows) )
      w=$((`tput cols` - 10))

      COMMAND="${COMMAND} | cowsay -${o:$(($RANDOM % ${#o})):1} -f${c[$(($RANDOM % ${#c}))]} -W$w"
    elif which ponysay > /dev/null; then
      COMMAND="${COMMAND} | ponysay"
      lol=false
    fi

    if which lolcat > /dev/null && lol; then
      COMMAND="${COMMAND} | lolcat"
    fi

    eval $COMMAND
  fi
fi

source "`brew --prefix`/etc/grc.bashrc"


# Unset unused variables.
unset _prefix

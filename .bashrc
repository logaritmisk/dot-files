# Export path with sbin
export PATH="$PATH:/usr/local/sbin"

# Export editor
export EDITOR=emacs

# Export colors
export TERM=xterm-256color


# Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Z
if [ -f ~/System/z.sh ]; then
  . ~/System/z.sh
fi


# CLI color
export CLICOLOR=true


# Git piece
# GIT_PS1_SHOWDIRTYSTATE=true
# GIT_PIECE='$(__git_ps1 " \[$color_yellow\](%s)\[$color_none\]")'

# Date piece
DATE_PIECE="\[${color_gray}\]\$(date '+%a %H:%M:%S')\[${color_none}\]"

# Bash prompt
export PS1="${DATE_PIECE} \u\[${color_green}\]@\[${color_none}\]\h \[${color_gray}\]\w${GIT_PIECE:-""}\n\[${color_green}\]\$\[${color_none}\] "


# Bash alias
. ~/.bash_alias

# growlnotify
which -s growlnotify && . .bash_growlnotify

# HandBrakeCLI
which -s HandBrakeCLI && . .bash_handbrake


# No ._ files when copying files
export COPYFILE_DISABLE=true
export COPY_EXTENDED_ATTRIBUTES_DISABLED=true


# fortune & cowsay
if which -s fortune && which -s cowsay; then
  _f() {
    o='bdgpstwy'
    c=( $(ls `brew --prefix cowsay`/share/cows) )
    
    fortune -s | cowsay -${o:$(($RANDOM % ${#o})):1} -f${c[$(($RANDOM % ${#c}))]}
  }
  
  _f
  unset _f
fi


export PATH="$PATH:/usr/local/sbin"

# bash colors
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


# git pice
#GIT_PS1_SHOWDIRTYSTATE=true
#GIT_PIECE='$(__git_ps1 " \[$color_yellow\](%s)\[$color_none\]")'


# prompt
DATE_PIECE="\[${color_gray}\]\$(date '+%a %H:%M:%S')\[${color_none}\]"
export PS1="${DATE_PIECE} \u\[${color_green}\]@\[${color_none}\]\h \[${color_gray}\]\w${GIT_PIECE:-""}\n\[${color_green}\]\$\[${color_none}\] "


# cli color
export CLICOLOR=true


# bash alias
. ~/.bash_alias


export COPYFILE_DISABLE=true

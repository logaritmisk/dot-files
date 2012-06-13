function fish_prompt
  set -l COLOR_NONE '\033[0m'
  set -l COLOR_GRAY '\033[0;90m'
  set -l COLOR_GREEN '\033[0;32m'
  set -l COLOR_YELLOW '\033[1;33m'

  printf "$COLOR_GRAY%s $COLOR_NONE%s$COLOR_GREEN@$COLOR_NONE%s $COLOR_GRAY%s$COLOR_NONE\n$COLOR_GREEN\$$NONE " (date '+%a %H:%M:%S') (whoami) (hostname) (pwd)
end

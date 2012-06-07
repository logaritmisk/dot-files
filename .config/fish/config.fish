function fish_prompt
  set -l NONE '\033[0m'
  set -l GRAY '\033[0;90m'
  set -l GREEN '\033[0;32m'
  set -l YELLOW '\033[1;33m'

  printf "$GRAY%s $NONE%s$GREEN@$NONE%s $GRAY%s$NONE\n$GREEN\$$NONE " (date '+%a %H:%M:%S') (whoami) (hostname) (pwd)
end

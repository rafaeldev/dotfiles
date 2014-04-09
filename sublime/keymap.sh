#!/bin/bash
GRAY='\033[0;36m'
GREEN='\033[0;32m'
NO_COLOR='\033[1;0m'

echo -e "${GRAY}Copying keymaps files...${NO_COLOR}"

if [ `uname` == 'Linux' ]; then
  USER_PATH=${HOME}/.config/sublime-text-2/Packages/User

  mkdir -p $USER_PATH

  cp ./keymaps/*.sublime-keymap $USER_PATH
else
  USER_PATH=${HOME}/Library/'Application Support/Sublime Text 2'/Packages/User

  mkdir -p $USER_PATH

  cp ./keymaps/*.sublime-keymap $USER_PATH
fi

echo -e "${GREEN}keymap.sh done!${NO_COLOR}\n"

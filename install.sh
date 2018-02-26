#!/bin/bash

##################
# --- common --- #
##################

GRAY='\033[0;36m'
GREEN='\033[0;32m'
NO_COLOR='\033[1;0m'

###################
# --- configs --- #
###################

JOB_NAME='Dotfiles#install'

#####################
# --- functions --- #
#####################

begin() {
  echo -e "-------------------------------------"
  echo -e "${GRAY}Starting ${JOB_NAME}...${NO_COLOR}\n"
}

config() {
  mkdir -p ~/.ssh
  cp more/config ~/.ssh/config
}

dotfiles() {
  for file in `ls files`; do
    cp files/${file} ~/.${file}
  done
}

end() {
  echo -e "${GREEN}Done!${NO_COLOR}"
  echo -e "-------------------------------------\n"
}

job() {
  cp more/job ~/.job
}

linking() {
  if [ "$(uname)" == 'Linux' ]; then
    ENTRY='source ~/.bash_profile'
    FILE=~/.bashrc
    RESULT=$(grep "${ENTRY}" $FILE)

    [ "$RESULT" == '' ] && echo $ENTRY >> $FILE
  fi
}

reload() {
  . ~/.bash_profile
}

templates() {
  cp -R more/git-hooks ~/.git-hooks
}

terminal() {
  [ `uname` != 'Linux' ] && open ./more/rafaeldev.terminal
}

###################
# --- install --- #
###################

begin

dotfiles
config
templates
terminal
linking
job
reload

end

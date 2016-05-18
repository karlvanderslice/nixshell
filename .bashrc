# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

function __setprompt {
  local GREEN="\[$(tput setaf 2)\]"
  local BLUE="\[\033[0;34m\]"
  local NO_COLOUR="\[\033[0m\]"
  local SSH_IP=`echo $SSH_CLIENT | awk '{ print $1 }'`
  local SSH2_IP=`echo $SSH2_CLIENT | awk '{ print $1 }'`
  if [ $SSH2_IP ] || [ $SSH_IP ] ; then
    local SSH_FLAG="@\h"
  fi
  PS1="$GREEN[\$(date +%H:%M)][\u$SSH_FLAG:\w]\\$ $NO_COLOUR"
  PS2="$GREEN>$NO_COLOUR "
  PS4='$GREEN+$NO_COLOUR '
}
__setprompt

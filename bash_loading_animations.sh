#!/usr/bin/env bash

# Source: https://github.com/Silejonu/bash_loading_animations

# shellcheck disable=SC2034 # https://github.com/koalaman/shellcheck/wiki/SC2034

### Loading animations list ###
ABSOLUTE_PATH=$(dirname -- "$(readlink -f "${BASH_SOURCE}")")
for ANIMATION in $ABSOLUTE_PATH/animations/*.sh; do source $ANIMATION; done

declare -a BLA_active_loading_animation

BLA::play_loading_animation_loop() {
  while true ; do
    for frame in "${BLA_active_loading_animation[@]}" ; do
      printf "\r%s" "${frame}"
      sleep "${BLA_loading_animation_frame_interval}"
    done
  done
}

BLA::start_loading_animation() {
  BLA_active_loading_animation=( "${@}" )
  # Extract the delay between each frame from array BLA_active_loading_animation
  BLA_loading_animation_frame_interval="${BLA_active_loading_animation[0]}"
  unset "BLA_active_loading_animation[0]"
  tput civis # Hide the terminal cursor
  BLA::play_loading_animation_loop &
  BLA_loading_animation_pid="${!}"
}

BLA::stop_loading_animation() {
  kill "${BLA_loading_animation_pid}" &> /dev/null
  printf "\n"
  tput cnorm # Restore the terminal cursor
}


###############################################################################
################################# USAGE GUIDE #################################
###############################################################################
################## Read below for the explanations on how to ##################
################### show loading animations in your script. ###################
###############################################################################

:<<'EXAMPLES'

## Put these lines at the top of your script:
## (replace /path/to/bash_loading_animations.sh with the appropriate filepath)
# Load in the functions and animations
source /path/to/bash_loading_animations.sh
# Run BLA::stop_loading_animation if the script is interrupted
trap BLA::stop_loading_animation SIGINT

# Show a loading animation for the command "foo"
BLA::start_loading_animation "${BLA_name_of_the_animation[@]}"
foo
BLA::stop_loading_animation

# If foo prints some output in the terminal, you may want to add:
foo 1> /dev/null # hide standard output
# or
foo 2> /dev/null # hide error messages
# or
foo &> /dev/null # hide all output

EXAMPLES

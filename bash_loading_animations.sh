#!/usr/bin/env bash

##### Table of contents #####
# 1. Loading animations list
# 2. Main code
# 3. Demo the animations
# 4. Usage
# 5. Compact versions of the main code

###################################### 1 ######################################
############# COPY THE ANIMATIONS BELOW TO THE TOP OF YOUR SCRIPT #############
###############################################################################
################### You can safely remove the lines for the ###################
#################### animations you are not interested in. ####################
###############################################################################

### Loading animations list
# The first value of an array is the interval (in seconds) between each frame

## ASCII animations ##
# Will work in any terminal, including the TTY.
classic=( 0.25 '-' '\' '|' '/' )
box=( 0.2 ┤ ┴ ├ ┬ )
bubble=( 0.6 · o O O o · )
breathe=( 0.9 '  ()  ' ' (  ) ' '(    )' ' (  ) ' )
growing_dots=( 0.5 '.  ' '.. ' '...' '.. ' '.  ' '   ' )
passing_dots=( 0.25 '.  ' '.. ' '...' ' ..' '  .' '   ' )
metro=( 0.2 '[    ]' '[=   ]' '[==  ]' '[=== ]' '[ ===]' '[  ==]' '[   =]' )

## UTF-8 animations ##
# Require Unicode support (will work in most modern terminals, but not in TTY).
classic_utf8=( 0.25 '—' '\' '|' '/' )
bounce=( 0.3 . · ˙ · )
vertical_block=( 0.25 ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ █ ▇ ▆ ▅ ▄ ▃ ▁ )
horizontal_block=( 0.25 ▏ ▎ ▍ ▌ ▋ ▊ ▉ ▉ ▊ ▋ ▌ ▍ ▎ ▏ )
quarter=( 0.25 ▖ ▘ ▝ ▗ )
triangle=( 0.45 ◢ ◣ ◤ ◥)
semi_circle=( 0.1 ◐ ◓ ◑ ◒ )
rotating_eyes=( 0.4 ◡◡ ⊙⊙ ⊙⊙ ◠◠ )
firework=( 0.4 '⢀' '⠠' '⠐' '⠈' '*' '*' ' ' )
braille=( 0.2 ⠁ ⠂ ⠄ ⡀ ⢀ ⠠ ⠐ ⠈ )
braille_whitespace=( 0.2 ⣾ ⣽ ⣻ ⢿ ⡿ ⣟ ⣯ ⣷ )
trigram=( 0.25 ☰ ☱ ☳ ☶ ☴ )
arrow=( 0.15 ▹▹▹▹▹ ▸▹▹▹▹ ▹▸▹▹▹ ▹▹▸▹▹ ▹▹▹▸▹ ▹▹▹▹▸ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ ▹▹▹▹▹ )
bouncing_ball=( 0.4 '( ●    )' '(  ●   )' '(   ●  )' '(    ● )' '(     ●)' '(    ● )' '(   ●  )' '(  ●   )' '( ●    )' '(●     )' )
big_dot=( 0.7 ∙∙∙ ●∙∙ ∙●∙ ∙∙● )
modern_metro=( 0.15 ▰▱▱▱▱▱▱ ▰▰▱▱▱▱▱ ▰▰▰▱▱▱▱ ▱▰▰▰▱▱▱ ▱▱▰▰▰▱▱ ▱▱▱▰▰▰▱ ▱▱▱▱▰▰▰ ▱▱▱▱▱▰▰ ▱▱▱▱▱▱▰ ▱▱▱▱▱▱▱ ▱▱▱▱▱▱▱ ▱▱▱▱▱▱▱ ▱▱▱▱▱▱▱ )
pong=( 0.35 '▐⠂       ▌' '▐⠈       ▌' '▐ ⠂      ▌' '▐ ⠠      ▌' '▐  ⡀     ▌' '▐  ⠠     ▌' '▐   ⠂    ▌' '▐   ⠈    ▌' '▐    ⠂   ▌' '▐    ⠠   ▌' '▐     ⡀  ▌' '▐     ⠠  ▌' '▐      ⠂ ▌' '▐      ⠈ ▌' '▐       ⠂▌' '▐       ⠠▌' '▐       ⡀▌' '▐      ⠠ ▌' '▐      ⠂ ▌' '▐     ⠈  ▌' '▐     ⠂  ▌' '▐    ⠠   ▌' '▐    ⡀   ▌' '▐   ⠠    ▌' '▐   ⠂    ▌' '▐  ⠈     ▌' '▐  ⠂     ▌' '▐ ⠠      ▌' '▐ ⡀      ▌' '▐⠠       ▌' )
earth=( 0.45 🌍 🌎 🌏 )
clock=( 0.2 🕛 🕐 🕑 🕒 🕓 🕔 🕕 🕖 🕗 🕘 🕙 🕚 )
moon=( 0.8 🌑 🌒 🌓 🌔 🌕 🌖 🌗 🌘 )
orange_pulse=( 0.35 🔸 🔶 🟠 🟠 🔶 )
blue_pulse=( 0.35 🔹 🔷 🔵 🔵 🔷 )
football=( 0.25 ' 🧑⚽️       🧑' '🧑  ⚽️      🧑' '🧑   ⚽️     🧑' '🧑    ⚽️    🧑' '🧑     ⚽️   🧑' '🧑      ⚽️  🧑' '🧑       ⚽️🧑 ' '🧑      ⚽️  🧑' '🧑     ⚽️   🧑' '🧑    ⚽️    🧑' '🧑   ⚽️     🧑' '🧑  ⚽️      🧑' )
blink=( 0.25 😐 😐 😐 😐 😐 😐 😐 😐 😐 😑 )
sick=( 0.9 🤢 🤢 🤮 )
monkey=( 0.4 🙉 🙈 🙊 🙈 )
bomb=( 0.25 '💣   ' ' 💣  ' '  💣 ' '   💣' '   💣' '   💣' '   💣' '   💣' '   💥' '    ' '    ' )

###################################### 2 ######################################
##### COPY THE CODE BELOW IN YOUR SCRIPT, RIGHT AFTER THE ANIMATIONS LIST #####
###############################################################################
############## If you would prefer to use a more compact version ##############
################# of this code, go to the bottom of the file. #################
###############################################################################

# Run stop_loading_animation if the script is interrupted
trap stop_loading_animation SIGINT

loading_animation() {
  tput civis # Hide the terminal cursor
  while true ; do
    for frame in "${active_loading_animation[@]}" ; do
      printf "\r%s" "${frame}"
      sleep "${loading_animation_frame_interval}"
    done
  done
}

start_loading_animation() {
  active_loading_animation=( "${@}" )
  # Extract the delay between each frame from the active_loading_animation array
  loading_animation_frame_interval="${active_loading_animation[0]}"
  unset "active_loading_animation[0]"
  loading_animation &
  loading_animation_id="${!}"
}

stop_loading_animation() {
  kill "${loading_animation_id}" &> /dev/null
  printf "\n"
  tput cnorm # Restore the terminal cursor
}

###################################### 3 ######################################
######################### DEMO THE LOADING ANIMATIONS #########################
###############################################################################
########## The code below serves as a way to preview the animations. ##########
################ You do not need to include it in your script. ################
###############################################################################

demo_interval() { sleep 7 ; kill "${loading_animation_id}" &> /dev/null ; printf "\r                    \r" ; }
start_loading_animation "${classic[@]}" ; demo_interval
start_loading_animation "${box[@]}" ; demo_interval
start_loading_animation "${bubble[@]}" ; demo_interval
start_loading_animation "${breathe[@]}" ; demo_interval
start_loading_animation "${growing_dots[@]}" ; demo_interval
start_loading_animation "${passing_dots[@]}" ; demo_interval
start_loading_animation "${metro[@]}" ; demo_interval
start_loading_animation "${classic_utf8[@]}" ; demo_interval
start_loading_animation "${bounce[@]}" ; demo_interval
start_loading_animation "${vertical_block[@]}" ; demo_interval
start_loading_animation "${horizontal_block[@]}" ; demo_interval
start_loading_animation "${quarter[@]}" ; demo_interval
start_loading_animation "${triangle[@]}" ; demo_interval
start_loading_animation "${semi_circle[@]}" ; demo_interval
start_loading_animation "${rotating_eyes[@]}" ; demo_interval
start_loading_animation "${firework[@]}" ; demo_interval
start_loading_animation "${braille[@]}" ; demo_interval
start_loading_animation "${braille_whitespace[@]}" ; demo_interval
start_loading_animation "${trigram[@]}" ; demo_interval
start_loading_animation "${arrow[@]}" ; demo_interval
start_loading_animation "${bouncing_ball[@]}" ; demo_interval
start_loading_animation "${big_dot[@]}" ; demo_interval
start_loading_animation "${modern_metro[@]}" ; demo_interval
start_loading_animation "${pong[@]}" ; demo_interval
start_loading_animation "${earth[@]}" ; demo_interval
start_loading_animation "${clock[@]}" ; demo_interval
start_loading_animation "${moon[@]}" ; demo_interval
start_loading_animation "${orange_pulse[@]}" ; demo_interval
start_loading_animation "${blue_pulse[@]}" ; demo_interval
start_loading_animation "${football[@]}" ; demo_interval
start_loading_animation "${blink[@]}" ; demo_interval
start_loading_animation "${sick[@]}" ; demo_interval
start_loading_animation "${monkey[@]}" ; demo_interval
start_loading_animation "${bomb[@]}" ; demo_interval
exit 0

###################################### 4 ######################################
#################################### USAGE ####################################
###############################################################################
################## Read below for the explanations on how to ##################
################### show loading animations in your script. ###################
###############################################################################

# Show a loading animation for the command "your_command"
start_loading_animation "${name_of_the_animation[@]}"
your_command
stop_loading_animation

# If your command prints some output in the terminal, you may want to add:
your_command 1> /dev/null # hide standard output
# or
your_command 2> /dev/null # hide error messages
# or
your_command &> /dev/null # hide all output

###################################### 5 ######################################
###################### USE A COMPACT VERSION OF THE CODE ######################
###############################################################################
######### Copy one of the paragraphs below at the top of your script, #########
####################### just after the animations list. #######################
###############################################################################

# Max width = 80
trap stop_loading_animation SIGINT ; loading_animation() { tput civis ; while \
true ; do for frame in "${active_loading_animation[@]}" ; do printf "\r%s" \
"${frame}" ; sleep "${loading_animation_frame_interval}" ; done ; done ; } ; \
start_loading_animation() { active_loading_animation=( "${@}" ) ; \
loading_animation_frame_interval="${active_loading_animation[0]}" ; unset \
"active_loading_animation[0]" ; loading_animation & \
loading_animation_id="${!}" ; } ; stop_loading_animation() { kill \
"${loading_animation_id}" &> /dev/null ; printf "\n" ; tput cnorm ; }

# Each function on a single line
trap stop_loading_animation SIGINT
loading_animation() { tput civis ; while true ; do for frame in "${active_loading_animation[@]}" ; do printf "\r%s" "${frame}" ; sleep "${loading_animation_frame_interval}" ; done ; done ; }
start_loading_animation() { active_loading_animation=( "${@}" ) ; loading_animation_frame_interval="${active_loading_animation[0]}" ; unset "active_loading_animation[0]" ; loading_animation & loading_animation_id="${!}" ; }
stop_loading_animation() { kill "${loading_animation_id}" &> /dev/null ; printf "\n" ; tput cnorm ; }

# Single line
trap stop_loading_animation SIGINT ; loading_animation() { tput civis ; while true ; do for frame in "${active_loading_animation[@]}" ; do printf "\r%s" "${frame}" ; sleep "${loading_animation_frame_interval}" ; done ; done ; } ; start_loading_animation() { active_loading_animation=( "${@}" ) ; loading_animation_frame_interval="${active_loading_animation[0]}" ; unset "active_loading_animation[0]" ; loading_animation & loading_animation_id="${!}" ; } ; stop_loading_animation() { kill "${loading_animation_id}" &> /dev/null ; printf "\n" ; tput cnorm ; }

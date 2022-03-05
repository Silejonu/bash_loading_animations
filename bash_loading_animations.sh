#!/usr/bin/env bash

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%% Add the code between this box and the other similar one to the top of your script %%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#

## List of available loading animations
## You can safely remove the lines of the animations you don't want to use
# ASCII - The following animations will work in all terminals, including TTY:
classic=( \- \\ \| \/ )
box=( ┤ ┴ ├ ┬ )
bubble=( · o O o )
breathe=( '  ()  ' ' (  ) ' '(    )' ' (  ) ' )
growing_dots=( '.  ' '.. ' '...' '.. ' )
passing_dots=( '.  ' '.. ' ' ..' '  .' '   ' )
metro=( '[    ]' '[=   ]' '[==  ]' '[=== ]' '[ ===]' '[  ==]' '[   =]' )
# UTF-8 - The following animations require a terminal that supports Unicode (most modern terminals do), they will NOT work in TTY:
classic_utf8=( \— \\ \| \/ )
bounce=( . · ˙ · )
vertical_block=( ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ ▇ ▆ ▅ ▄ ▃ )
horizontal_block=( ▉ ▊ ▋ ▌ ▍ ▎ ▏ ▎ ▍ ▌ ▋ ▊ )
quarter=( ▖ ▘ ▝ ▗ )
triangle=( ◢ ◣ ◤ ◥)
semi_circle=( ◐ ◓ ◑ ◒ )
rotating_eyes=( ◡◡ ⊙⊙ ◠◠ )
braille=( ⠁ ⠂ ⠄ ⡀ ⢀ ⠠ ⠐ ⠈ )
braille_whitespace=( ⣾ ⣽ ⣻ ⢿ ⡿ ⣟ ⣯ ⣷ )
trigram=( ☰ ☱ ☳ ☶ ☴ )
clock=( 🕛 🕐 🕑 🕒 🕓 🕔 🕕 🕖 🕗 🕘 🕙 🕚 )
arrow=( '▹▹▹▹▹' '▸▹▹▹▹' '▹▸▹▹▹' '▹▹▸▹▹' '▹▹▹▸▹' '▹▹▹▹▸' )
bouncing_ball=( '( ●    )' '(  ●   )' '(   ●  )' '(    ● )' '(     ●)' '(    ● )' '(   ●  )' '(  ●   )' '( ●    )' '(●     )' )
earth=( 🌍 🌎 🌏 )
pong=( '▐⠂       ▌' '▐⠈       ▌' '▐ ⠂      ▌' '▐ ⠠      ▌' '▐  ⡀     ▌' '▐  ⠠     ▌' '▐   ⠂    ▌' '▐   ⠈    ▌' '▐    ⠂   ▌' '▐    ⠠   ▌' '▐     ⡀  ▌' '▐     ⠠  ▌' '▐      ⠂ ▌' '▐      ⠈ ▌' '▐       ⠂▌' '▐       ⠠▌' '▐       ⡀▌' '▐      ⠠ ▌' '▐      ⠂ ▌' '▐     ⠈  ▌' '▐     ⠂  ▌' '▐    ⠠   ▌' '▐    ⡀   ▌' '▐   ⠠    ▌' '▐   ⠂    ▌' '▐  ⠈     ▌' '▐  ⠂     ▌' '▐ ⠠      ▌' '▐ ⡀      ▌' '▐⠠       ▌' )
big_dot=( '∙∙∙' '●∙∙' '∙●∙' '∙∙●' )
football=( ' 🧑⚽️       🧑' '🧑  ⚽️      🧑' '🧑   ⚽️     🧑' '🧑    ⚽️    🧑' '🧑     ⚽️   🧑' '🧑      ⚽️  🧑' '🧑       ⚽️🧑 ' '🧑      ⚽️  🧑' '🧑     ⚽️   🧑' '🧑    ⚽️    🧑' '🧑   ⚽️     🧑' '🧑  ⚽️      🧑' )
orange_pulse=( 🔸 🔶 🟠 🟠 🔶 )
blue_pulse=( 🔹 🔷 🔵 🔵 🔷 )
modern_metro=( '▰▱▱▱▱▱▱' '▰▰▱▱▱▱▱' '▰▰▰▱▱▱▱' '▱▰▰▰▱▱▱' '▱▱▰▰▰▱▱' '▱▱▱▰▰▰▱' '▱▱▱▱▰▰▰' '▱▱▱▱▱▰▰' '▱▱▱▱▱▱▰' '▱▱▱▱▱▱▱' )

#########################################################
### Edit the paragraph below to choose your animation ###
#########################################################
active_loading_animation="${classic[*]}" # name of the animation you want. format: "${name_of_your_animation[*]}" (don't forget the quotes)
loading_animation_speed=0.25 # time (in seconds) between each frame (ex: 0.15 0.5 2)
#########################################################
### Edit the paragraph above to choose your animation ###
#########################################################

# Stop the animation and restore the normal cursor if the script is interrupted
trap stop_loading_animation SIGINT

loading_animation() {
  while true ; do
    tput civis
    for frame in ${active_loading_animation[@]} ; do
      printf "\r%s" "${frame}"
      sleep "${loading_animation_speed}"
    done
  done
}

start_loading_animation() {
  loading_animation &
  loading_animation_id=$!
}

stop_loading_animation() {
  kill ${loading_animation_id} &> /dev/null
  printf "\n"
  tput cnorm
}

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%% Add the code between this box and the other similar one to the top of your script %%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#

# Demo the loading animation
start_loading_animation
sleep 10
stop_loading_animation
exit 0

##############
### How-to ###
##############

# Use the chosen loading animation this way:
start_loading_animation
your_command_here
stop_loading_animation

# If your command prints some output in the terminal, it will mess with the loading animation.
# To hide all output, do the following:
your_command_here &> /dev/null
# To hide error messages only, do the following:
your_command_here 2> /dev/null
# To hide standard output only, do the following:
your_command_here 1> /dev/null

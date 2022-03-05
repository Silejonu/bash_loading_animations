#!/usr/bin/env bash

## List of available loading animations
# ASCII
classic=( \- \\ \| \/ )
box=( ┤ ┴ ├ ┬ )
bubble=( · o O o )
breathe=( '  ()  ' ' (  ) ' '(    )' ' (  ) ' )
growing_dots=( '.  ' '.. ' '...' '.. ' )
passing_dots=( '.  ' '.. ' ' ..' '  .' '   ' )
metro=( '[    ]' '[=   ]' '[==  ]' '[=== ]' '[ ===]' '[  ==]' '[   =]' )
# UTF-8
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
arrow=( ▹▹▹▹▹ ▸▹▹▹▹ ▹▸▹▹▹ ▹▹▸▹▹ ▹▹▹▸▹ ▹▹▹▹▸ )
bouncing_ball=( '( ●    )' '(  ●   )' '(   ●  )' '(    ● )' '(     ●)' '(    ● )' '(   ●  )' '(  ●   )' '( ●    )' '(●     )' )
earth=( 🌍 🌎 🌏 )
pong=( ▐⠂       ▌ ▐⠈       ▌ ▐ ⠂      ▌ ▐ ⠠      ▌ ▐  ⡀     ▌ ▐  ⠠     ▌ ▐   ⠂    ▌ ▐   ⠈    ▌ ▐    ⠂   ▌ ▐    ⠠   ▌ ▐     ⡀  ▌ ▐     ⠠  ▌ ▐      ⠂ ▌ ▐      ⠈ ▌ ▐       ⠂▌ ▐       ⠠▌ ▐       ⡀▌ ▐      ⠠ ▌ ▐      ⠂ ▌ ▐     ⠈  ▌ ▐     ⠂  ▌ ▐    ⠠   ▌ ▐    ⡀   ▌ ▐   ⠠    ▌ ▐   ⠂    ▌ ▐  ⠈     ▌ ▐  ⠂     ▌ ▐ ⠠      ▌ ▐ ⡀      ▌ ▐⠠       ▌ )
big_dot=( ∙∙∙ ●∙∙ ∙●∙ ∙∙● )
football=(  🧑⚽️       🧑 🧑  ⚽️      🧑 🧑   ⚽️     🧑 🧑    ⚽️    🧑 🧑     ⚽️   🧑 🧑      ⚽️  🧑 🧑       ⚽️🧑  🧑      ⚽️  🧑 🧑     ⚽️   🧑 🧑    ⚽️    🧑 🧑   ⚽️     🧑 🧑  ⚽️      🧑 )
orange_pulse=( 🔸 🔶 🟠 🟠 🔶 )
blue_pulse=( 🔹 🔷 🔵 🔵 🔷 )
modern_metro=( ▰▱▱▱▱▱▱ ▰▰▱▱▱▱▱ ▰▰▰▱▱▱▱ ▱▰▰▰▱▱▱ ▱▱▰▰▰▱▱ ▱▱▱▰▰▰▱ ▱▱▱▱▰▰▰ ▱▱▱▱▱▰▰ ▱▱▱▱▱▱▰ ▱▱▱▱▱▱▱ )

# Choose which animation will we displayed, and its speed
active_loading_animation=${classic[@]}
loading_animation_speed=0.25

# Stop the animation and restore the normal cursor if the script is interrupted
trap stop_progress_bar SIGINT

loading_animation() {
  while true ; do
    tput civis
    for frame in ${active_loading_animation[@]} ; do
      printf "\r${frame}"
      sleep ${loading_animation_speed}
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

# Demo the loading animation
start_loading_animation
sleep 10
stop_loading_animation

# bash_loading_animations
Ready-to-use loading animations in ASCII and UTF-8 for easy integration into your Bash scripts.

**If you have some good-looking animations or ideas, please do a pull request, or open an issue!**

## Demo
![](https://github.com/Silejonu/bash_loading_animations/blob/main/bash_loading_animations.gif)

(recorded with `asciinema`, some animations are broken in this preview, but work fine in real-life. I'll record a better demo later.)

## Add a loading animation to your script
Add the code between the two blocks that look like this to the top of your script:
```
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%% Add the code between this box and the other similar one to the top of your script %%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
```
You can safely remove the lines of the animations you're not interested in.

Chose your animation and its speed by editing the variables `active_loading_animation` and `loading_animation_speed` (more precise instructions are in the script).

*There is also a compact version of the code that fits in 4 lines, as well as an ultra-compact version that fits in a single (long) line.*

## Use a loading animation in your script
Simply do the following:
```
start_loading_animation
your_command_here
stop_loading_animation
```

If your command prints some output in the terminal, it will mess with the loading animation.

To hide all output, do the following: ```your_command_here &> /dev/null```

To hide error messages only, do the following: ```your_command_here 2> /dev/null```

To hide standard output only, do the following: ```your_command_here 1> /dev/null```

##
Some of the animations have been adapted from https://github.com/sindresorhus/cli-spinners.

# The ultimate collection of loading animations for Bash
Ready-to-use loading animations in ASCII and UTF-8 for easy integration into your Bash scripts.

**Have an idea for a nice-looking animation? [Please help expand the collection!](https://github.com/Silejonu/bash_loading_animations/issues/new?assignees=Silejonu&labels=enhancement&template=add-an-animation.yml&title=%5BNew+animation%5D+)**

![](https://github.com/Silejonu/bash_loading_animations/blob/main/demo.gif)

⚠ ***Important note:*** do not copy the raw file from your browser. Instead, use `git clone https://github.com/Silejonu/bash_loading_animations` or `wget https://raw.githubusercontent.com/Silejonu/bash_loading_animations/main/bash_loading_animations.sh` to get the script. If you don't, **you will have broken animations**, as some non-breaking spaces will be converted into regular spaces.

## Include a loading animation in your script

1. Add the animation(s) you like to the top of your script (you can safely remove the lines of the animations you're not interested in).

2. Add the code written between these blocks:
```
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%% Add the code between this box and its twin to the top of your script %%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#
```
3. Chose your animation by editing the variable `active_loading_animation`.

*Included in the script is a compact version of the code that fits in 4 lines, as well as an ultra-compact version that fits in a single (very long) line.*

## Show the loading animation for a command
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

# The ultimate collection of loading animations for Bash
Ready-to-use loading animations in ASCII and UTF-8 for easy integration into your Bash scripts.

**Have an idea for a nice-looking animation? [Please help expand the collection!](https://github.com/Silejonu/bash_loading_animations/issues/new?assignees=Silejonu&labels=enhancement&template=add-an-animation.yml&title=%5BNew+animation%5D+)**

<div align="center">

![](demo.gif)

</div>

⚠ ***Important note:*** do not copy the raw script file from your browser or **you will have broken animations**, as the non-breaking spaces will be converted into regular spaces.

Instead, use one of the following method to retrieve the script:
```
git clone https://github.com/Silejonu/bash_loading_animations
wget https://raw.githubusercontent.com/Silejonu/bash_loading_animations/main/bash_loading_animations.sh
```

## Add support for loading animations to your script

1. Copy the animations list from `bash_loading_animations.sh` to the top of your script

2. Copy the code from `bash_loading_animations.sh` to the top of your script, below the animations list

*There are compact versions of the code included at the end of `bash_loading_animations.sh`.*

## Show a loading animation for `foo`
Show a loading animation for the command `foo`:
```
start_loading_animation "${name_of_the_animation[@]}"
foo
stop_loading_animation
```

If the command prints some output in the terminal, you may want to add:
```
foo 1> /dev/null # hide standard output
# or
foo 2> /dev/null # hide error messages
# or
foo &> /dev/null # hide all output
```

##
Some of the animations have been adapted from https://github.com/sindresorhus/cli-spinners.

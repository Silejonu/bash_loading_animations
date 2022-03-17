# The ultimate collection of loading animations for Bash
Ready-to-use loading animations in ASCII and UTF-8 for easy integration into your Bash scripts.

**Have an idea for a nice-looking animation? [Please help expand the collection!](https://github.com/Silejonu/bash_loading_animations/issues/new?assignees=Silejonu&labels=enhancement&template=add-an-animation.yml&title=%5BNew+animation%5D+)**

<div align="center">

![](demo.gif)

</div>

⚠ ***Important note:*** do not copy the raw script file from your browser or **you will have broken animations**, as the non-breaking spaces will be converted into regular spaces.

Instead, use one of the following methods to retrieve the script:
```bash
git clone https://github.com/Silejonu/bash_loading_animations
```
```bash
curl -O https://raw.githubusercontent.com/Silejonu/bash_loading_animations/main/bash_loading_animations.sh
curl -O https://raw.githubusercontent.com/Silejonu/bash_loading_animations/main/bash_loading_animations.demo
```
```bash
wget https://raw.githubusercontent.com/Silejonu/bash_loading_animations/main/bash_loading_animations.sh
wget https://raw.githubusercontent.com/Silejonu/bash_loading_animations/main/bash_loading_animations.demo
```

Run the provided script `bash_loading_animations.demo` to quickly visualise the available animations.

## Add support for loading animations to your script

Put these lines at the top of your script:

```bash
# Load in the functions and animations
source /path/to/bash_loading_animations.sh
# Run BLA::stop_loading_animation if the script is interrupted
trap BLA::stop_loading_animation SIGINT
```

*Don't forget to replace `/path/to/bash_loading_animations.sh` with the appropriate filepath.*

## Show a loading animation for `foo`
Show a loading animation for the command `foo`:
```bash
BLA::start_loading_animation "${BLA_name_of_the_animation[@]}"
foo
BLA::stop_loading_animation
```

If `foo` prints some output in the terminal, you may want to add:
```bash
foo 1> /dev/null # hide standard output
# or
foo 2> /dev/null # hide error messages
# or
foo &> /dev/null # hide all output
```

##
Some of the animations have been adapted from https://github.com/sindresorhus/cli-spinners.

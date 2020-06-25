#█▓▒░ Executes commands at login pre-zshrc.

# source: https://github.com/sorin-ionescu/prezto/blob/master/runcoms/zprofile

#█▓▒░ Browser
if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#█▓▒░ Paths
# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/opt/coreutils/libexec/gnubin
  /usr/local/{bin,sbin}
  $path
)

#█▓▒░ Less
# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi
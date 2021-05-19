#█▓▒░ paths
path=(
  $HOME/bin
  $HOME/.local/bin
  /usr/local/{bin,sbin}
  $path
)

#█▓▒░ preferred text editor
export EDITOR=vim
export VISUAL=vim
export PAGER=less

#█▓▒░ language
export LC_COLLATE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LESSCHARSET=utf-8

#█▓▒░ java fixes
export _JAVA_AWT_WM_NONREPARENTING=1

#█▓▒░ no mosh titles
export MOSH_TITLE_NOPREFIX=1

#█▓▒░ timezone
TIMEZONE="America/Chicago"
# sudo rm -rf /etc/localtime
# sudo ln -sf "/usr/share/zoneinfo/${TIMEZONE}" /etc/localtime

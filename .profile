export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
mkdir -p "${XDG_CONFIG_HOME}"
export XDG_CACHE_HOME="${XDG_CACHE_HOME:=$HOME/.cache}"
mkdir -p "${XDG_CACHE_HOME}"
export XDG_DATA_HOME="${XDG_DATA_HOME:=$HOME/.local/share}"
mkdir -p "${XDG_DATA_HOME}"
export XDG_BIN_HOME="${XDG_BIN_HOME:=$HOME/.local/bin}"
mkdir -p "${XDG_BIN_HOME}"
export XDG_DATA_DIRS="${XDG_DATA_DIRS:=/usr/local/share:/usr/share}"
export XDG_CONFIG_DIRS="${XDG_CONFIG_DIRS:=/etc/xdg}"

# https://tlvince.com/vim-respect-xdg
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'
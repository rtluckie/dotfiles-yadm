if [[ -x "$(command -v brew)" ]]; then
  path=(
    $(brew --prefix)/bin
    $(brew --prefix)/sbin
    $(brew --prefix)/opt/coreutils/libexec/gnubin
    $path
  )
  eval $(brew shellenv)
  brew analytics off
  export HOMEBREW_NO_ANALYTICS=1
  export HOMEBREW_NO_AUTO_UPDATE=1
fi


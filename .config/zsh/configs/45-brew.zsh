if [[ -x "$(command -v brew)" ]]; then
  path=(
    $(brew --prefix)/bin
    $(brew --prefix)/sbin
    $(brew --prefix)/opt/coreutils/libexec/gnubin
    $path
  )
  eval $(brew shellenv)
  brew analytics off
fi


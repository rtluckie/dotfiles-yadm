if [[ ! -x "$(command -v gpg)" ]]; then
  echo 'Error: gpg is not installed.' >&2
  exit 1
fi

export GNUPGHOME="${XDG_CONFIG_HOME}/gnupg"
export GPG_TTY="$(tty)"
# export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
# gpgconf --launch gpg-agent
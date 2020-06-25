#█▓▒░ Defines environment variables.

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export ZSH_CACHE_DIR="${XDG_CACHE_HOME}/zsh" && mkdir -p $ZSH_CACHE_DIR
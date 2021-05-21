if [[ -d "$HOME/.pyenv/bin" ]]; then
    export PATH="$HOME/.pyenv/bin:$PATH"
elif [[ -d "/usr/local/pyenv/bin" ]]; then
    export PATH="/usr/local/pyenv/bin:$PATH"
    export PYENV_ROOT="/usr/local/pyenv"
fi
if  [[ -n ${PS1:-''} ]] && which pyenv &>/dev/null; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init - zsh)"
    eval "$(pyenv virtualenv-init - zsh)"
fi

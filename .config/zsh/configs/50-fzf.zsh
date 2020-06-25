if [[ ! -x "$(command -v brew)" ]]; then
    echo 'brew is not installed...'
    return
fi
if [[ -f "$(brew --prefix)/opt/fzf/install" ]]; then
    if [[ ! -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ]]; then
        $(brew --prefix)/opt/fzf/install --xdg --key-bindings --completion --no-update-rc >/dev/null 2>&1
    fi
    source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh
fi

if [[ -x "$(command -v fd)" ]]; then
    export FZF_DEFAULT_COMMAND='fd --type f'
fi

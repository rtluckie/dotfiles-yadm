for config (${XDG_CONFIG_HOME}/zsh/configs/*.zsh) source $config

if [[ -s "${ZDOTDIR:-$HOME}/zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/zprezto/init.zsh"
fi
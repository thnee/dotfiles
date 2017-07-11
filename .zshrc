
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="thnee"

ZSH_CUSTOM=~/.oh-my-zsh-custom/

PLUGINS_FILE=~/.oh-my-zsh-plugins
if [[ -f $PLUGINS_FILE ]]; then
    plugins=($(cat $PLUGINS_FILE))
fi

DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh


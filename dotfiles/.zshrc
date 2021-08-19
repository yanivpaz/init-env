export LC_ALL=C.UTF-8
export LANG=C.UTF-8


export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"


plugins=(git)
source $ZSH/oh-my-zsh.sh

#sudo apt install zsh-autosuggestions zsh-syntax-highlighting

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-z/zsh-z.plugin.zsh
source ~/.oh-my-zsh/custom/plugins/fzf/zsh-fzf-history-search.zsh

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=249'




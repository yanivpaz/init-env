export ZSH="/home/yanivpaz/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
  git
  kube-ps1
)

source $ZSH/oh-my-zsh.sh
export KUBE_PS1_ENABLED=false
prompt_aws(){}
export PROMPT=$PROMPT'$(kube_ps1) '

# All other scripts run from $ZSH_CUSTOM

#sudo apt install zsh-autosuggestions zsh-syntax-highlighting
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/themes/agnoster.zsh-theme
source ~/.oh-my-zsh/custom/plugins/zsh-z/zsh-z.plugin.zsh
source ~/.oh-my-zsh/custom/plugins/fzf/zsh-fzf-history-search.zsh





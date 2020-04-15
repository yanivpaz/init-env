export ZSH="/home/yanivpaz/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
  git
  kube-ps1
  zsh-autosuggestions
  z
)

source $ZSH/oh-my-zsh.sh
export KUBE_PS1_ENABLED=false
prompt_aws(){}
export PROMPT=$PROMPT'$(kube_ps1) '

# All other scripts run from $ZSH_CUSTOM


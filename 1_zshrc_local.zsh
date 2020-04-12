if [ -f ~/z.sh ]; then source  ~/z.sh ; fi

export DOCKER_HOST=tcp://localhost:2375
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'
export KUBE_PS1_ENABLED=false
export KUBE_PS1_SYMBOL_USE_IMG=true
export PROMPT=$PROMPT'$(kube_ps1) '
export CDPATH=.:~/git


# Terminal setup

## Preparation

Install zsh and oh-my-zsh 
```
  sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting fzf -y 
  chsh -s $(which zsh)
```  
  - lougout and login again 
  - for .zshrc file creation click 'q'

## Shell setup
Install oh my zsh
```
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
see https://www.sitepoint.com/zsh-tips-tricks/ for more details

* Copy /.zshrc 
```
  cp -f ~/.zshrc ~/.zshrc.after_ohmyzsh
  curl -o  ~/.zshrc  https://raw.githubusercontent.com/yanivpaz/init-env/master/dotfiles/.zshrc
```


* Update $ZSH_CUSTOM  

```
export ZSH_CUSTOM=${ZSH_CUSTOM:-$ZSH/custom}

mkdir -p  ${ZSH_CUSTOM}/plugins/{fzf,zsh-z}
curl -L https://raw.githubusercontent.com/joshskidmore/zsh-fzf-history-search/master/zsh-fzf-history-search.zsh --output ${ZSH_CUSTOM}/plugins/fzf/zsh-fzf-history-search.zsh
curl -L https://raw.githubusercontent.com/agkozak/zsh-z/master/zsh-z.plugin.zsh --output ${ZSH_CUSTOM}/plugins/zsh-z/zsh-z.plugin.zsh
curl -L https://raw.githubusercontent.com/yanivpaz/init-env/master/themes/agnoster.zsh-theme --output ${ZSH_CUSTOM}/agnoster.zsh-theme
```

## Screen setup
* Installation
```
sudo apt install screen
sudo mkdir -p  /run/screen ; sudo chmod 777 /run/screen
curl -o ~/.screenrc https://raw.githubusercontent.com/yanivpaz/init-env/master/dotfiles/.screenrc
```

* Screen keys 
```
<ctrl+A> c : create new screen windows

<ctrl+A> num
OR
<ctrl+A> " :  switch new session
<ctrl+A> X :  kill current session
<ctrl+A> S :  create new vertical screen
<ctrl+A> | :  create new horizontal screen
<ctrl+A> tab :  switch between screens
<ctrl+A> esc <arrow up/down>: scroll up/down
```

* More info:
  - https://www.kilobitspersecond.com/2014/02/10/understanding-gnu-screens-hardstatus-strings/
  - https://www.linuxjournal.com/article/10950 

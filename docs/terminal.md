# Terminal setup

## Preparation
Clone the sources 
```
git clone https://github.com/yanivpaz/init-env.git
OR
git clone git@github.com:yanivpaz/init-env.git
```

## Shell setup

* Install zsh and oh-my-zsh 
```
  sudo apt install zsh zsh-autosuggestions zsh-syntax-highlighting fzf -y 
  chsh -s $(which zsh)
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
see https://www.sitepoint.com/zsh-tips-tricks/ for more details

* Copy /.zshrc 
```
  curl -o  ~/.zshrc https://raw.githubusercontent.com/yanivpaz/init-env/master/dotfiles/.zshrc
```


* Update $ZSH_CUSTOM  
copy all *zsh files to $ZSH_CUSTOM directory
```
export ZSH_CUSTOM=${ZSH_CUSTOM:-$ZSH/custom}
# ensure cd <current git repo location>
cp -f zsh/* $ZSH_CUSTOM
cp -f themes/* $ZSH_CUSTOM/themes
mkdir -p  ${ZSH_CUSTOM}/plugins/fzf/
cd ${ZSH_CUSTOM}/plugins/fzf/
curl -LO https://raw.githubusercontent.com/joshskidmore/zsh-fzf-history-search/master/zsh-fzf-history-search.zsh
```




## Git 
### key gen 
```
git config --global user.name "name  name "
git config --global user.email "your email "
cat /dev/zero | ssh-keygen -q -N ""
```

### git alias for add commit and push
```
git config --global alias.acp '!f() { git add -A && git commit -m "$@" && git push; }; f'
```
more info:
https://pascalnaber.wordpress.com/2019/10/05/have-a-great-looking-terminal-and-a-more-effective-shell-with-oh-my-zsh-on-wsl-2-using-windows/


## Screen setup
* Installation
```
sudo apt install screen
sudo chmod 777 /run/screen
sudo mkdir -p  /run/screen
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

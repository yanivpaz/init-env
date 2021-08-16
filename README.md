# Terminal setup

## Shell setup

* Install zsh and oh-my-zsh - see https://www.sitepoint.com/zsh-tips-tricks/ for details
* Copy /.zshrc 
```
 curl -o  ~/.zshrc https://raw.githubusercontent.com/yanivpaz/init-files/master/dotfiles/.zshrc
```


* update $ZSH_CUSTOM  
copy all *zsh files to $ZSH_CUSTOM directory

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
* more info:
https://pascalnaber.wordpress.com/2019/10/05/have-a-great-looking-terminal-and-a-more-effective-shell-with-oh-my-zsh-on-wsl-2-using-windows/
## fzf
```
sudo apt install fzf 
mkdir -p  ~/.oh-my-zsh/custom/plugins/fzf/
cd ~/.oh-my-zsh/custom/plugins/fzf/
curl -LO https://raw.githubusercontent.com/joshskidmore/zsh-fzf-history-search/master/zsh-fzf-history-search.zsh
```



## Screen setup

* Installation
```
sudo apt install screen
sudo chmod 777 /run/screen
sudo mkdir -p  /run/screen
curl -o ~/.screenrc https://raw.githubusercontent.com/yanivpaz/init-files/master/dotfiles/.screenrc
```

* Quick screen keys 
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
* https://www.kilobitspersecond.com/2014/02/10/understanding-gnu-screens-hardstatus-strings/
* https://www.linuxjournal.com/article/10950 

* date issues
```
sudo hwclock -s    
``



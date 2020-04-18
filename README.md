# Terminal setup

## Shell setup

* Install zsh and oh-my-zsh
  * See https://www.sitepoint.com/zsh-tips-tricks/ for details
* Copy /.zshrc 
```
 curl -o  ~/.zshrc https://raw.githubusercontent.com/yanivpaz/init-files/master/dotfiles/.zshrc
```


* update $ZSH_CUSTOM
copy all *zsh files to $ZSH_CUSTOM directory

## Git Setup
git alias for add commit and push
```
 git config --global alias.acp '!f() { git add -A && git commit -m "$@" && git push; }; f'
```

## Screen setup

* installation
```

sudo apt install screen
 curl -o ~/.screenrc https://raw.githubusercontent.com/yanivpaz/init-files/master/dotfiles/.screenrc
```


more info:
* https://www.kilobitspersecond.com/2014/02/10/understanding-gnu-screens-hardstatus-strings/
* https://www.linuxjournal.com/article/10950 

### Quick screen keys 
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

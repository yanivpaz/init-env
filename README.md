# Setting Terminal

## Shell setup

### install zsh and oh-my-zsh
* See https://www.sitepoint.com/zsh-tips-tricks/ for details
* See dotfiles/.zshrc example 

### update $ZSH_CUSTOM
copy all *zsh files to $ZSH_CUSTOM directory

## Git Setup
```
 git config --global alias.acp '!f() { git add -A && git commit -m "$@" && git push; }; f'
```

## Screen tool
* See dotfiles/.screensrc


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
```

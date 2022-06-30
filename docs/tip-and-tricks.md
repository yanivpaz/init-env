## Setup fonts for vscode Terminal 
see https://dev.to/mattstratton/making-powerline-work-in-visual-studio-code-terminal-1m7
install  "Menlo for Powerline"
setup in vs code 
![image](https://user-images.githubusercontent.com/4955356/176604701-6f81f71c-d81c-4cb9-b669-7445e2d5b505.png)


## set display 
```
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
```

## sort packages according to size
```
dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -n
```
## sync date
```
sudo hwclock -s 
```

## Add users
```
useradd -m yanivpaz -g users -s /bin/bash 
passwd yanivpaz
usermod -aG sudo yanivpaz
su - yanivpaz
```


## Add git alias 
```
git config --global alias.acp '!f() { git add -A && git commit -m "$@" && git push; }; f'
```


## Paste is slow   
see https://github.com/zsh-users/zsh-autosuggestions/issues/102#issuecomment-178267194  
add export DISABLE_MAGIC_FUNCTIONS=true in the begining of ~/.zshrc

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

## Ignore AWS CLI pager
```
export AWS_PAGER=""
```

## Add git alias 
```
git config --global alias.acp '!f() { git add -A && git commit -m "$@" && git push; }; f'
```


## Paste is slow in zsh   
see https://github.com/zsh-users/zsh-autosuggestions/issues/102#issuecomment-178267194  
add export DISABLE_MAGIC_FUNCTIONS=true in the begining of ~/.zshrc

## Alias to chrome
```
 alias chrome="/mnt/c/Program\ Files/Google/Chrome/Application/chrome.exe"
```


## yq 
```
sudo wget -qO /usr/local/bin/yq https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64
sudo chmod a+x /usr/local/bin/yq
```

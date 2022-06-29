# Usefull commands 
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

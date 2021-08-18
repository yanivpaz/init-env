# WSL setup

## Common packages setup
```
apt install curl vim sudo dos2unix dnsutils less lsof man netcat psmisc jq wget bc dnsutils locales git python3-pip awscli unzip  -y
apt install curl vim sudo dos2unix dnsutils less lsof man netcat psmisc jq wget bc dnsutils locales git python3-pip awscli unzip  -y
locale-gen "en_US.UTF-8"
```

## Install common K8s tools 
```
curl -s https://raw.githubusercontent.com/yanivpaz/utils-setup/main/install-k8s-utils.sh |bash
```

## Usefull commands 
### set display 
```
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
```

### sort packages according to size
```
dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -n
```
### sync date
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

```
apt install curl vim sudo dos2unix dnsutils less lsof man netcat psmisc jq wget bc dnsutils locales git python3-pip awscli unzip  -y
apt install curl vim sudo dos2unix dnsutils less lsof man netcat psmisc jq wget bc dnsutils locales git python3-pip awscli unzip  -y
locale-gen "en_US.UTF-8"
```

```
curl -s https://raw.githubusercontent.com/yanivpaz/utils-setup/main/install-k8s-utils.sh |bash
```

```
git config --global user.name "name  name "
git config --global user.email "your email "
cat /dev/zero | ssh-keygen -q -N ""
```

## Usefull commands 
```
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
dpkg-query -Wf '${Installed-Size}\t${Package}\n' | sort -n
```

```
useradd -m yanivpaz -g users -s /bin/bash 
passwd yanivpaz
usermod -aG sudo yanivpaz
su - yanivpaz
```

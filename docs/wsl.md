# WSL setup

## Common packages setup
```
apt install curl vim sudo dos2unix dnsutils less lsof man netcat psmisc jq wget bc dnsutils locales git python3-pip  unzip  -y
locale-gen "en_US.UTF-8"
```

## Common K8S utils 
```
curl -s https://raw.githubusercontent.com/yanivpaz/init-env/master/scripts/k8s-utils.sh |bash
```

## Common AWS utils 
```
curl -s https://raw.githubusercontent.com/yanivpaz/init-env/master/scripts/aws-utils.sh |bash
```

## Terraform 
```
curl -s https://raw.githubusercontent.com/yanivpaz/init-env/master/scripts/install-terraform.sh |bash
```

## K8s
* Install  Rancher desktop 
* Kubernetes tools - curl -s https://raw.githubusercontent.com/yanivpaz/init-env/master/scripts/k8s-utils.sh |bash



## Docker  
```
sudo apt install docker.io
sudo update-alternatives --set iptables /usr/sbin/iptables-legacy
sudo dockerd &
```

Test 
```
sudo docker run   hello-world
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



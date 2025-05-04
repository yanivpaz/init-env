# WSL setup
Note: This script document refer to latest version of each doc, which is not always recommended  


## Common packages setup
```
sudo apt update && sudo apt install -y curl vim dos2unix dnsutils less lsof man netcat-openbsd psmisc jq wget bc locales git python3-pip unzip
```

## Locale
```
locale-gen "en_US.UTF-8"
```

## K8S utils 
```
curl -s https://raw.githubusercontent.com/yanivpaz/init-env/master/scripts/k8s-utils.sh |bash
```
## AWS utils 
install AWS CLI  see https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html  

```
curl -s https://raw.githubusercontent.com/yanivpaz/init-env/master/scripts/aws-utils.sh |bash
```

#TODO - add AWS cli to script below
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

## Terraform 
```
curl -s https://raw.githubusercontent.com/yanivpaz/init-env/master/scripts/install-terraform.sh |bash
```

## K8s
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



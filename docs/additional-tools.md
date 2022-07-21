# Tools setup - WSL2
* kubens and kubectl 
```
sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx
sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx
sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens
```
OR see https://github.com/ahmetb/kubectx#apt-debian 


#Change to latest 
* GH CLI 
```
curl -LO https://github.com/cli/cli/releases/download/v2.13.0/gh_2.13.0_linux_amd64.tar.gz
tar zxvf gh_2.13.0_linux_amd64.tar.gz
sudo mv gh_2.13.0_linux_amd64/bin/gh  /usr/local/bin
rm -rf gh_2.13.0_linux_amd64*
```

* Trivy 
```
wget https://github.com/aquasecurity/trivy/releases/download/v0.29.2/trivy_0.29.2_Linux-64bit.deb
sudo dpkg -i trivy_0.29.2_Linux-64bit.deb
```

* Dive - https://github.com/wagoodman/dive
```
wget https://github.com/wagoodman/dive/releases/download/v0.9.2/dive_0.9.2_linux_amd64.deb
sudo apt install ./dive_0.9.2_linux_amd64.deb
```

* Skopeo 
```
sudo apt-get -y install skopeo
```

* podman 
```
source /etc/os-release
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /' > /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list"
sudo wget -nv https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key -O- | sudo apt-key add -
sudo apt install podman -y
```

* jfrog  
```
curl -fL https://getcli.jfrog.io | sh
sudo mv  jfrog /usr/local/bin
```



* https://github.com/ibraheemdev/modern-Unix
```
apt install duf bat 
sudo pip3 install tldr

curl -LO https://github.com/Peltoche/lsd/releases/download/0.22.0/lsd_0.22.0_amd64.deb
sudo dpkg -i lsd_0.22.0_amd64.deb

curl -LO https://github.com/rs/curlie/releases/download/v1.6.9/curlie_1.6.9_linux_amd64.deb
sudo dpkg -i ./curlie_1.6.9_linux_amd64.deb
```

add the following aliases 
```
alias df=duf
alias ls=lsd
alias curl=curlie 
alias cat=batcat 
#alias cat='/usr/bin/batcat --paging=never'
alias curl=curlie
```





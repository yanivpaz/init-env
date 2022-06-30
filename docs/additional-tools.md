# Tools setup - WSL2


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

* Skopeo 
```
sudo apt-get -y install skopeo
```


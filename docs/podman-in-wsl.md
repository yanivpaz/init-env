## Add docker registry 
Add the following to /etc/containers/registries.conf
```
[registries.search]
registries = ['docker.io']
```

## start podman service
```
port BASEPATH=/run/user/podman
export PID_FILE=$BASEPATH/podman.pid
export SOCK_FILE=$BASEPATH/podman.sock

podman system service --time=0 unix://$SOCK_FILE &  echo "$!" > $PID_FILE
```

## in client
```
export DOCKER_HOST=unix:///run/user/podman/podman.sock
sudo apt install podman-docker

TODO : fix to run without sudo 
sudo -E  sam local invoke
```

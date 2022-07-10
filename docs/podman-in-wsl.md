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
### Define env vars
```
export DOCKER_HOST=unix:///run/user/podman/podman.sock
sudo apt install podman-docker
chown `id -u`:`id -g` /run/user/podman/podman.sock
```

## Run sam local 
```
sam local invoke
```

### Run dynmodb 
```
podman run  --volume /home/yanivp/dnymodb-volume:/home/dynamodblocal/data -p 8000:8000 -d -e AWS_ACCESS_KEY_ID=DUMMYEXAMPLEKEY -e AWS_SECRET_ACCESS_KEY=DUMMYEXAMPLEKEY -e REGION=eu-west-1 amazon/dynamodb-local```

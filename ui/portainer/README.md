# Portainer.io

Is a web open-source to manage containers in docker

- https://www.portainer.io/
- https://github.com/portainer/portainer
- https://hub.docker.com/r/portainer/portainer/



## Install

```sh
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
```

Next, go to http://localhost:9000 


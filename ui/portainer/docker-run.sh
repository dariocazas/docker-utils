#!/bin/bash

CONTAINER_NAME=portainer
VOLUME_NAME=portainer_data

check_and_start_docker() {
    systemctl is-active --quiet docker || systemctl start docker
}

create_portainer_volume() {
    docker volume ls -q --filter name=$VOLUME_NAME || docker volume create $VOLUME_NAME
}

start_portainer_container() {
    if [ "$(docker ps -a -q --filter name=$CONTAINER_NAME)" ]; then
        docker start $CONTAINER_NAME
    else
        docker run -d -p 8000:8000 -p 9000:9000 --name=$CONTAINER_NAME --restart=always \
            -v /var/run/docker.sock:/var/run/docker.sock \
            -v $VOLUME_NAME:/data portainer/portainer
    fi
}

check_and_start_docker
create_portainer_volume
start_portainer_container

command -v xdg-open > /dev/null && xdg-open http://localhost:9000 > /dev/null 2>&1
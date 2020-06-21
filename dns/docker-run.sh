
#!/bin/bash

CONTAINER_NAME=dns-proxy-server
SCRIPT_FOLDER=$(dirname $(readlink -f $0))

check_and_start_docker() {
    systemctl is-active --quiet docker || systemctl start docker
}

start_dns_container() {
    docker run --rm --hostname dns.mageddo --name $CONTAINER_NAME -p 5380:5380 \
        -v $SCRIPT_FOLDER/conf:/app/conf \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v /etc/resolv.conf:/etc/resolv.conf \
        defreitas/dns-proxy-server 
}

check_and_start_docker
start_dns_container
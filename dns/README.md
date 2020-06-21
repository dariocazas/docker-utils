# DNS resolution

DNS server tool to develop systems with docker solving docker containers hostnames.

This repository provide an start an stop container described in https://github.com/mageddo/dns-proxy-server 

To review configuration file in `conf/config.json`, check [Mageddo configuration](http://mageddo.github.io/dns-proxy-server/latest/en/3-configuration/)

## Run

Only run `docker-run.sh` script, and docker start and print in the console the calls resolved.

To end it, use Ctrl+C. If you run in background mode, call to `docker-stop.sh` to terminate it.
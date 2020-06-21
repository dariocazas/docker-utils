# Kitematic

Visual Docker Container Management.

- [GitHub]
- [Website]

## What is

- Kitematic’s one click install gets Docker running and lets you control your app containers from a graphical user interface (GUI).
- Seamlessly switch between Kitematic GUI or Docker CLI to run and manage your application containers.
- Automatically map ports, visually change environment variables, configuring volumes, streamline logs and CLI access to containers.

## How to install

Kitematic is part of the legacy Docker Toolbox, but it still supported as a separate download from https://github.com/docker/kitematic

You will download version for Windows, MAC and Ubuntu. 

### Use as docker container

If you need in other OS (like Fedora), you can run as a docker.

I found a [docker hub image], but don't start in my Fedora. The origin github repository is archived, with broken links.

Asuming that you use xserver (and no wayland), build and run this image.

To build:
```sh
./docker-build.sh
```

To run:
```sh
# Start
./docker-run.sh

# Stop
./docker-stop.sh
```

Or, you can only use one docker-compose command:
```sh
# Start 
docker-compose up

# Stop: use Ctrl+C
```

## PENDING TASKS

- Container ends, `/usr/bin/kitematic: /usr/bin/kitematic: cannot execute binary file`



[GitHub]: https://github.com/docker/kitematic
[Website]: https://kitematic.com/
[docker hub image]: https://hub.docker.com/r/jonadev95/kitematic-docker/
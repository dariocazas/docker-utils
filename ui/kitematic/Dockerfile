FROM ubuntu:18.04

RUN apt-get update
# Kitematic dependencies
RUN apt-get install -y git gconf2 gvfs-bin libnotify4 xdg-utils libgtk2.0-0 python 
# To download kitematic
RUN apt-get install -y curl unzip
# RUN apt-get install -y apt-utils
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y keyboard-configuration
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y xorg curl nodejs build-essential python libgtk2.0-0  libgconf-2-4 libnss3 libasound2 unzip

WORKDIR /tmp
RUN curl -L https://github.com/docker/kitematic/releases/download/v0.17.11/Kitematic-0.17.11-Ubuntu.zip --output kitematic.zip
RUN unzip ./kitematic.zip
RUN dpkg -i ./Kitematic-0.17.11_amd64.deb

ENTRYPOINT bash kitematic
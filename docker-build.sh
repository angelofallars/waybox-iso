#!/bin/sh

mkdir -p ./build
mkdir -p ~/.arch-pacman-cache/

sudo docker run --privileged \
                --mount type=bind,source="$(pwd)"/build,target=/root/Alci-Iso-Out \
                --mount type=bind,source=/home/"$(whoami)"/.arch-pacman-cache,target=/var/cache/pacman/pkg \
                -t waybox-iso \

#!/bin/sh

docker rm -f thunder
docker run --name thunder -it -v `pwd`:/thunder_root -v "${HOME}/.ssh":/root/.ssh \
	-e PS1='thunder@\h:\w\$ ' \
	-e HOST_UID="$(id -u)" \
    -e HOST_GID="$(id -g)" \
	-p 9998:9998 -p 55555:55555 thunder-build

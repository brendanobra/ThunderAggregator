#!/bin/sh

docker rm -f thunder
docker run --network=host --name thunder -it -v `pwd`:/thunder_root -v "${HOME}/.ssh":/root/.ssh \
	-e PS1='thunder@\h:\w\$ ' \
	-e HOST_UID="$(id -u)" \
    -e HOST_GID="$(id -g)" \
	 thunder-build

#!/bin/sh

docker rm -f thunder
docker run --name thunder -it -v `pwd`:/thunder_root -v "${HOME}/.ssh":/root/.ssh -p 9998:9998 -p 55555:55555 thunder-build

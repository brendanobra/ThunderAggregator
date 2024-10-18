#!/bin/sh

docker run -it -v `pwd`:/thunder_root -v "${HOME}/.ssh":/root/.ssh thunder-build

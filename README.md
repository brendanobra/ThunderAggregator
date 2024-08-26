### Convenience playground for building thunder
This is an attempt at automation some of this: https://rdkcentral.github.io/Thunder/introduction/build_linux/

to use
1) install and learn docker
2) clone this repo: `git clone  git@github.com:brendanobra/ThunderAggregator.git`
3) build the docker image: 
`cd ThunderAggregator`

`./docker-image-build.sh`


4) Run docker image:

`./run-docker.sh`

(prompt will be slightly different):
`root@f0543d3bcfa8:/thunder_root# `

run a build

`./build.sh`

Note that this mounts the source directories on the *host* machine (mac, etc) so it is possible to make source changes and rebuild.


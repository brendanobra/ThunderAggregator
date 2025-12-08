#!/bin/sh
LD_LIBRARY_PATH=`pwd`/install/lib:`pwd`/install/lib/thunder/plugins ./install/bin/Thunder -c `pwd`/rust_config_host.json -f  


FROM ubuntu:22.04
RUN apt -y update && apt -y upgrade
RUN apt install -y  build-essential pkg-config cmake ninja-build libusb-1.0-0-dev zlib1g-dev libssl-dev software-properties-common git libsystemd-dev
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt -y update
RUN apt install python3 python3-pip -y
RUN pip install jsonref
ENV THUNDER_ROOT=/thunder_root
WORKDIR /thunder_root
ENV Thunder_DIR=${THUNDER}


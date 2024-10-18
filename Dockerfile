FROM ubuntu:22.04
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV DEBIAN_FRONTEND=noninteractive
ENV THUNDER_ROOT=/thunder_root
ENV RDK_TOOLS=/rdk_tools
ARG USERNAME=rdk
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    #
    # [Optional] Add sudo support. Omit if you don't need to install software after connecting.
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME
WORKDIR /rdk_tools

RUN apt -y update && apt -y upgrade
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt -y update
RUN apt install python3 python3-pip -y
RUN pip install jsonref pexpect
RUN apt -y update --fix-missing
#RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen 
RUN apt install -y  build-essential pkg-config cmake ninja-build libusb-1.0-0-dev \
    zlib1g-dev libssl-dev git libsystemd-dev gawk wget git-core repo diffstat unzip \
    texinfo gcc-multilib locales locales-all chrpath socat cpio  xz-utils \ 
    vim debianutils iputils-ping libsdl1.2-dev xterm \
    libsqlite3-dev libcurl4-openssl-dev valgrind lcov clang libsystemd-dev libboost-all-dev \
    libwebsocketpp-dev meson libcunit1 libcunit1-dev \
    libunwind-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev \
    gawk wget git diffstat unzip texinfo gcc  chrpath socat cpio python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping python3-git python3-jinja2 python3-subunit zstd liblz4-tool file locales libacl1

WORKDIR /rdk_tools
RUN sudo chown -R rdk:rdk "${RDK_TOOLS}"

RUN git clone https://github.com/xmidt-org/trower-base64.git
WORKDIR /rdk_tools/trower-base64
RUN  meson setup --warnlevel 3 --werror build
RUN  ninja -C build
RUN  ninja -C build install


USER "${USERNAME}"
ENV BITBAKE_DIR=${RDK_TOOLS}/poky 
WORKDIR "${RDK_TOOLS}"
RUN git clone git://git.yoctoproject.org/poky

WORKDIR /rdk_tools/poky
RUN git checkout -b kirkstone origin/kirkstone
WORKDIR /thunder_root
ENV Thunder_DIR=${THUNDER}
RUN chown -R rdk:rdk /thunder_root
ADD bb.sh "${BITBAKE_DIR}"

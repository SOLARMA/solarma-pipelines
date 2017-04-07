# See https://github.com/volumio/Build

FROM ubuntu:16.04
RUN apt-get update && \
    apt-get -y dist-upgrade && \
    apt-get -y install \
        git squashfs-tools kpartx multistrap \
        qemu-user-static binfmt-misc \
        samba debootstrap \
        parted dosfstools qemu binfmt-support \
        qemu-utils sudo

USER root

# EOF

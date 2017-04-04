# See https://github.com/volumio/Build

FROM ubuntu:16.04
RUN apt update && \
    apt -y dist-upgrade && \
    apt -y install \
        git squashfs-tools kpartx multistrap \
        qemu-user-static samba debootstrap \
        parted dosfstools qemu binfmt-support qemu-utils

USER root

# EOF

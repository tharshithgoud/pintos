# Inspired from https://github.com/ThierrySans/CSCC69-Pintos
FROM ubuntu:18.04

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    bash \
    build-essential \
    gdb \
    gcc \
    vim \
    nano \
    qemu \
    wget \
    xorg-dev \
    libncursesw5 \
    libncurses5-dev \
    dos2unix \
    expect \
    rsync \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /pintos

ENV PATH=/pintos/utils:$PATH

WORKDIR /pintos

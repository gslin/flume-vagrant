#!/bin/sh

work() {
    sed -i -e 's@http://archive.ubuntu.com@http://tw.archive.ubuntu.com@' /etc/apt/sources.list

    apt-get update

    DEBIAN_FRONTEND=noninteractive apt-get -y install git vim-nox
}

work

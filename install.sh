#!/bin/sh

work() {
    curl -s http://archive.cloudera.com/cdh5/ubuntu/lucid/amd64/cdh/archive.key | apt-key add -
    sed -i -e 's@http://archive.ubuntu.com@http://tw.archive.ubuntu.com@' /etc/apt/sources.list

    cat > /etc/apt/sources.list.d/cloudera.list <<EOF
deb [arch=amd64] http://archive.cloudera.com/cdh5/ubuntu/precise/amd64/cdh precise-cdh5 contrib
deb-src http://archive.cloudera.com/cdh5/ubuntu/precise/amd64/cdh precise-cdh5 contrib
EOF

    apt-get update

    DEBIAN_FRONTEND=noninteractive apt-get -y install git vim-nox
    DEBIAN_FRONTEND=noninteractive apt-get -y install default-jre flume-ng
}

work

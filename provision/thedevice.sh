#!/bin/bash -x

# install go
[ ! -d /opt/go ] && tar -C /opt -xzf /opt/share/go1.5.1.linux-amd64.tar.gz
mkdir /opt/queue

# setup environment and source it (use the settings)
cat << EOF > /etc/profile.d/queue.sh
export GOROOT=/opt/go/
export GOPATH=/opt/queue
export PATH=\$PATH:\$GOROOT/bin
EOF
. /etc/profile.d/queue.sh

#install the only packge missing in go
go get github.com/garyburd/redigo/redis


exit 0
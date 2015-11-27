#!/bin/bash -x

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y redis-server redis-tools

# Listen to all interfaces
sed -i '/^bind .*/d' /etc/redis/redis.conf
service redis-server restart

exit 0
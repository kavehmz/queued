#!/bin/bash -x

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y git redis-tools

exit 0
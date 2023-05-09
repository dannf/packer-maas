#!/bin/bash

set -e
set -x

export DEBIAN_FRONTEND=noninteractive
apt-add-repository -y ppa:canonical-kernel-bluefield/ppa -y
apt-get install -y -f \
	linux-bluefield linux-bluefield-modules-bluefield

mkdir -p /curtin
echo -n "linux-bluefield" > /curtin/CUSTOM_KERNEL

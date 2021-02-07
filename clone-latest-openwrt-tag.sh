#!/bin/sh

# Exit immediately if a simple command exits with a non-zero status
set -e

VERSION=`./git-describe-latest-tag.awk https://github.com/openwrt/openwrt`
echo "Cloning OpenWrt $VERSION"
git clone --branch $VERSION https://github.com/openwrt/openwrt.git
cd openwrt
./scripts/feeds update -a
./scripts/feeds install -a



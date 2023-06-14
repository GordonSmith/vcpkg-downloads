#!/bin/sh -e

cd vcpkg
git fetch origin
git checkout hpcc-platform-9.2.x
git pull
./bootstrap-vcpkg.sh
./vcpkg install --overlay-ports=./overlays --downloads-root=../downloads
git lfs track ../downloads/*

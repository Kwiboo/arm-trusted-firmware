#!/bin/sh
set -e -x

if [ "$1" = "distclean" ]; then
	make distclean
else
	make -j$(nproc) \
	     CROSS_COMPILE=aarch64-linux-gnu- \
	     LOG_LEVEL=40 \
	     PLAT=${1:-gxbb} \
	     bl31
fi

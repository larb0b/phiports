#!/bin/bash ../../.port.sh
port=ffmpeg
version=4.2.1
useconfigure=true
files="https://ffmpeg.org/releases/ffmpeg-4.2.1.tar.bz2 ffmpeg-4.2.1.tar.bz2 ab56e8b8fcaced4a85cebf425bfadfb4ceb71e27"

configure() {
	cd $workdir
	./configure --enable-cross-compile --arch=k1om --target-os=linux --prefix="$prefix" --host-cc="icc" --host-ld="icc" --cc="icc -mmic" --cxx="icc -mmic" --ld="icc -mmic" --disable-doc
	cd ..

}

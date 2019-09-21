#!/bin/bash ../../.port.sh
port=x265
version=3.1.2
workdir=x265_3.1.2
useconfigure=true
curlopts="-L"
files="https://bitbucket.org/multicoreware/x265/downloads/x265_3.1.2.tar.gz x265_3.1.2.tar.gz f1aaa0d25a7604e0777ead4a8893e2ce3697c0f4"

configure() {
	cd $workdir/build/linux
	cmake -DCMAKE_INSTALL_PREFIX="$prefix" -G "Unix Makefiles" ../../source
}
build() {
	make -j$(nproc)
}
install() {
	make install
	cd ../../
}

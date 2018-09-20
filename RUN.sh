#!/bin/sh

##
##  if there is sys/mtio.h not found issue , please copy mtio.h to your ndk sysroot
##  cp  android/bionic/libc/include/sys/mtio.h    /sourcecode/QSIP/sourcecode/android-ndk-r13b/platforms/android-24/arch-arm64/usr/include/sys/
##
##
export PATH="$NDK_HOME/toolchains//aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin/:$PATH"
export SYS_ROOT="$NDK_HOME/platforms/android-24/arch-arm64/"
export CC="aarch64-linux-android-gcc --sysroot=$SYS_ROOT"
export LD="aarch64-linux-android-ld"
export AR="aarch64-linux-android-ar"
export RANLIB="aarch64-linux-android-ranlib"
export STRIP="aarch64-linux-android-strip"

./configure --host=aarch64  LIBS="-lc -lgcc" CFLAGS="-Wno-implicit-function-declaration -Wno-int-to-pointer-cast -pie -fPIE"

make

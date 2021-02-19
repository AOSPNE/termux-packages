TERMUX_PKG_HOMEPAGE=https://www.qt.io/
TERMUX_PKG_DESCRIPTION="A cross-platform application and UI framework"
TERMUX_PKG_LICENSE="LGPL-3.0"
TERMUX_PKG_MAINTAINER="ihsakashi <yuvch122@gmail.com."
TERMUX_PKG_VERSION=6.0.1
TERMUX_PKG_SRCURL="http://master.qt.io/archive/qt/${TERMUX_PKG_VERSION%.*}/${TERMUX_PKG_VERSION}/single/qt-everywhere-src-${TERMUX_PKG_VERSION}.tar.xz"
TERMUX_PKG_SHA256=d13cfac103cd80b216cd2f73d0211dd6b1a1de2516911c89ce9c5ed14d9631a8
TERMUX_PKG_DEPENDS="binutils-gold, clang, libllvm-static, libc++, ndk-sysroot, libandroid-glob, libandroid-spawn, libandroid-shmem, harfbuzz, libc++, libjpeg-turbo, libpng, libuuid, openssl, pcre2, ttf-dejavu, freetype, zlib, zstd, sqlite"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_FORCE_CMAKE=true

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-GNinja
-DQT_HOST_PATH=/home/builder/lib/qt/6.0.1/gcc_64
-DQT_BUILD_TOOLS_WHEN_CROSSCOMPILING=true
-DQT_QMAKE_TARGET_MKSPEC=android-clang
-DANDROID_SDK_ROOT=${ANDROID_HOME}
-DCMAKE_ANDROID_NATIVE_API_LEVEL=${TERMUX_PKG_API_LEVEL}
-DANDROID_ABI=arm64-v8a
-DFEATURE_pkg_config=ON
-DFEATURE_system_pcre2=ON
-DFEATURE_system_zlib=ON
-DFEATURE_ssl=ON
-DINPUT_openssl=linked
-DFEATURE_system_freetype=ON
-DFEATURE_system_harfbuzz=ON
-DFEATURE_system_sqlite=ON
-DINPUT_libjpeg=system
-DINPUT_libpng=system
"
#-DCMAKE_TOOLCHAIN_PATH=${NDK}/build/cmake/android.toolchain.file

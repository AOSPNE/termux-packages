TERMUX_PKG_HOMEPAGE=https://bellard.org/quickjs/
TERMUX_PKG_DESCRIPTION="QuickJS is a small and embeddable Javascript engine"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="@termux"
_YEAR=2020
_MONTH=11
_DAY=08
TERMUX_PKG_VERSION=1:${_YEAR}${_MONTH}${_DAY}
TERMUX_PKG_SRCURL=https://bellard.org/quickjs/quickjs-${_YEAR}-${_MONTH}-${_DAY}.tar.xz
TERMUX_PKG_SHA256=2e9d63dab390a95ed365238f21d8e9069187f7ed195782027f0ab311bb64187b
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_MAKE_ARGS="CROSS_PREFIX=${TERMUX_HOST_PLATFORM}- CONFIG_CLANG=y CONFIG_DEFAULT_AR=y -W run-test262 -W run-test262-bn prefix=$TERMUX_PREFIX"

TERMUX_PKG_HOMEPAGE=https://scons.org/
TERMUX_PKG_DESCRIPTION="SCons is a make replacement in python"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="ihsakashi <yuvch122@gmail.com>"
TERMUX_PKG_VERSION=4.1.0
TERMUX_PKG_SRCURL=http://prdownloads.sourceforge.net/scons/scons-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=72d28d762e2126787f173e3d59e089239f8b2f4e9ef3114d57f10b1206985d85
TERMUX_PKG_DEPENDS="python"
TERMUX_PKG_BUILD_IN_SRC=true

_PYTHON_VERSION=3.9

TERMUX_PKG_RM_AFTER_INSTALL="
lib/python${_PYTHON_VERSION}/site-packages/easy-install.pth
lib/python${_PYTHON_VERSION}/site-packages/site.py
lib/python${_PYTHON_VERSION}/site-packages/__pycache__
"

termux_step_make() {
	return
}

termux_step_make_install() {
	export PYTHONPATH=$TERMUX_PREFIX/lib/python${_PYTHON_VERSION}/site-packages/
	python${_PYTHON_VERSION} setup.py install --prefix=$TERMUX_PREFIX --force
}


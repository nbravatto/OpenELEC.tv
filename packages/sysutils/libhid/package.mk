################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="libhid"
PKG_VERSION="0.2.16"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://libhid.alioth.debian.org/"
PKG_URL="http://alioth.debian.org/frs/download.php/file/1958/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS="libusb-compat libusb"
PKG_BUILD_DEPENDS_TARGET="toolchain libusb-compat libusb"
PKG_PRIORITY="optional"
PKG_SECTION="system"
PKG_SHORTDESC="libhid: userspace USB HID access library"
PKG_LONGDESC="libhid provides a generic and flexible way to access and interact with USB HID devices, much like libusb does for plain USB devices"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--disable-shared \
            --enable-static \
            --disable-werror \
            --disable-swig"

post_makeinstall_target() {
  rm -rf $INSTALL/usr
}

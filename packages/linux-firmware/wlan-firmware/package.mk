################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="wlan-firmware"
PKG_VERSION="3da1769"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="Free-to-use"
PKG_SITE="https://github.com/OpenELEC/wlan-firmware"
PKG_GIT_URL="https://github.com/OpenELEC/wlan-firmware.git"
PKG_GIT_BRANCH="master"
PKG_DEPENDS_TARGET="toolchain brcm_patchram"
PKG_PRIORITY="optional"
PKG_SECTION="firmware"
PKG_SHORTDESC="wlan-firmware: firmwares for various WLAN drivers"
PKG_LONGDESC="wlan-firmware: firmwares for various WLAN drivers"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  : # nothing todo
}

makeinstall_target() {
  DESTDIR=$INSTALL ./install
}

post_install() {
  enable_service brcmfmac_sdio-firmware.service
}

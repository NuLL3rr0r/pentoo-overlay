# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3_{4,5,6} )
PYTHON_REQ_USE='xml'

inherit distutils-r1

IDIOT_P="${PN}3-${PV}"

DESCRIPTION="Web application security auditor"
HOMEPAGE="http://wapiti.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${IDIOT_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="ntlm kerberos"

DEPEND=""

RDEPEND="dev-python/beautifulsoup:4[${PYTHON_USEDEP}]
	>=dev-python/requests-1.2.3[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/mako[${PYTHON_USEDEP}]
	dev-python/tld[${PYTHON_USEDEP}]
	dev-python/yaswfp[${PYTHON_USEDEP}]
	ntlm? ( dev-python/requests-ntlm[${PYTHON_USEDEP}] )
	kerberos? ( dev-python/requests-kerberos[${PYTHON_USEDEP}] )
	"

S="${WORKDIR}/${IDIOT_P}"

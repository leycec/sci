# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{7,8,9} )

inherit distutils-r1

DESCRIPTION="Compare quality of multiple genome assemblies to each other"
HOMEPAGE="http://bioinf.spbau.ru/QUAST" # no https
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-python/joblib[${PYTHON_USEDEP}]
	dev-python/simplejson[${PYTHON_USEDEP}]
"

distutils_enable_tests --install setup.py
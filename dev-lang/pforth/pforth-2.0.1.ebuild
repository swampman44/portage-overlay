EAPI=7

DESCRIPTION="a Portable ANS-like Forth written in ANSI 'C'"
HOMEPAGE="https://www.softsynth.com/pforth/"
LICENSE="0BSD"
KEYWORDS="~amd64 ~x86"
SRC_URI="https://github.com/philburk/${PN}/releases/tag/${PV}"
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="dev-build/cmake"
SLOT="0"

src_unpack() {
	unpack ${A}
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}

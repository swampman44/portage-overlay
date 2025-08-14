EAPI=7

DESCRIPTION="a Portable ANS-like Forth written in ANSI 'C'"
HOMEPAGE="https://www.softsynth.com/pforth/"
LICENSE="0BSD"
KEYWORDS="~amd64 ~x86"
SRC_URI="https://github.com/philburk/${PN}/releases/tag/${PV}"
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="dev-build/cmake"

src_compile() {
	      cmake .
	      emake
}
src_install() {
	      emake DESTDIR="${D}" install || die "make install failed"
}
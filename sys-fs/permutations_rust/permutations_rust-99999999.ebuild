#This is a Gentoo ebuild to merge it (if you like emerge command)
EAPI=7
 
DESCRIPTION="Permutations in Rust. Command line tool to generate permutations"
HOMEPAGE="https://github.com/dcc0/permutations_rust"
SRC_URI="https://github.com/dcc0/permutations_rust/archive/permutations_rust-999.tar.gz"
 
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
 
DEPEND="virtual/rust"
RDEPEND="${DEPEND}"
BDEPEND=""


src_unpack() {
einfo  "COPY /var/tmp/portage/sys-fs/permutations_rust-99999999/work/ to your home directiry to use";
einfo "TO RUN PROGRAM: RUN permutation.sh with an argument like: permutation.sh 3"
	
    unpack ${PN}-${PV}.tar.gz

}

src_install() {

elog  "COPY /var/tmp/portage/sys-fs/permutations_rust-99999999/work/ to your home directiry to use";
elog "TO RUN PROGRAM: RUN permutation.sh with an argument like: permutation.sh 3"
	
}	


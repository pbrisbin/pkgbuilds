# Author: Patrick Brisbin <pbrisbin@gmail.com>
pkgname=x
pkgver=0.0.1
pkgrel=1
pkgdesc="TODO"
arch=('any')
url="https://github.com/pbrisbin/$pkgname"
license=('GPL')
source=("https://github.com/pbrisbin/$pkgname/archive/v$pkgver.tar.gz")

package() {
  cd "$pkgname-$pkgver"

  make PREFIX=/usr DESTDIR="$pkgdir" install
}

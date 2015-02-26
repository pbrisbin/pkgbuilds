NAME    = aurget
VERSION = 4.4.5
RELEASE = 1
AUTHOR  = pbrisbin
URL     = https://github.com/$(AUTHOR)/$(NAME)

pkgver:
	sed -i "s/^pkgver=.*/pkgver=$(VERSION)/" PKGBUILD
	sed -i "s/^pkgrel=.*/pkgrel=$(RELEASE)/" PKGBUILD

pkgsums:
	updpkgsums

release: pkgver pkgsums
	mkaurball
	aur-submit $(NAME)-$(VERSION)-$(RELEASE).src.tar.gz
	$(RM) -rf src v$(VERSION).tar.gz $(NAME)-$(VERSION)-$(RELEASE).src.tar.gz

.PHONY: pkgver pkgsums release

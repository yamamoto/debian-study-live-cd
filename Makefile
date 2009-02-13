BUILDDATE = $(shell date +%Y%m%d%H%M%S)

all: build

build:
#	sudo MKSQUASHFS_OPTIONS="-b 1024k" lh_build 2>&1 | tee debian_live-buildlog.$(BUILDDATE)
	sudo lh_build 2>&1 | tee debian_live-buildlog.$(BUILDDATE)
	mv binary.iso debian_live-binary-$(BUILDDATE).iso
	mv binary.list debian_live-binary-$(BUILDDATE).list
	mv binary.packages debian_live-binary-$(BUILDDATE).packages
	md5sum debian_live-binary-$(BUILDDATE).iso > debian_live-binary-$(BUILDDATE).iso.md5sum

.PHONY: clean

clean:
	sudo lh_clean

distclean: clean
	sudo rm -rf cache/	
	sudo rm -f *.iso *.list *.packages
	rm -f log.*

#

.PHONY:	love
love:	all

.PHONY:	all
all:	qtwebengine/Makefile
	make -C qtwebengine || { echo 'Missing some build-depends? Try: "make depends"'; exit 1; }

.PHONY:	update
update:
	bin/update.sh
	bin/update.sh qtwebengine dev
	bin/autocommit.sh qtwebengine 'automated update'

.PHONY:	clean
clean:
	make -C qtwebengine clean

.PHONY:	gitclean
gitclean:	clean
	git submodule foreach --recursive git clean -f -d

.PHONY:	fullyclean
fullyclean:	clean
	git submodule foreach --recursive git clean -f -d -x

qtwebengine/Makefile:	qtwebengine
	cd qtwebengine && qmake

qtwebengine:
	echo Please wait, downloading 3GB+ ..
	git submodule update --init --recursive

.PHONY:	depends
prereq:	debian-depends

.PHONY:	debian-depends
debian-depends:
	apt install qtdeclarative5-dev qtdeclarative5-private-dev


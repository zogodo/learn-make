rm -rf aclocal.m4 autom4te.cache config.h config.h.in config.log config.status configure depcomp install-sh Makefile Makefile.in missing stamp-h1
autoreconf --install
./configure
make


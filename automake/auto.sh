rm -rf aclocal.m4 autom4te.cache config.h config.h.in config.log config.status configure depcomp install-sh Makefile Makefile.in missing stamp-h1
rm -rf *.log */*.o */*.in */Makefile */Sub*
autoreconf --install
./configure
make


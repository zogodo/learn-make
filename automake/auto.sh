rm -rf config.log autom4te.cache autoscan.log config.h.in config.status configure aclocal.m4 COPYING INSTALL depcomp install-sh missing Makefile Makefile.in config.h 
#autoscan
#mv configure.scan configure.ac
#vim configure.ac

aclocal
autoheader
autoconf
#automake -a
automake --add-missing
./configure
make && make install


#AC_INIT([automake], [1.0], [zgd@qq.com])
#AM_INIT_AUTOMAKE([foreign -Werror])



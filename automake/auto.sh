rm -rf autom4te.cache autoscan.log config.h.in configure.ac config.status configure aclocal.m4 COPYING INSTALL depcomp install-sh missing
autoscan
mv configure.scan configure.ac
vim configure.ac

aclocal
autoheader
autoconf
#automake -a
automake --add-missing
./configure
make && make install


#AC_INIT([automake], [1.0], [zgd@qq.com])
#AM_INIT_AUTOMAKE([foreign -Werror])



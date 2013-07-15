AC_PREREQ(2.59)

AC_INIT([fasttp], [m4_esyscmd([./version.sh])], [vallee.aurelien@gmail.com])

AC_CANONICAL_SYSTEM

AM_INIT_AUTOMAKE([foreign])
LT_INIT

LTVER="1:0:0"
AC_SUBST(LTVER)

AC_PROG_CXX
AC_PROG_LIBTOOL
AM_PROG_CC_C_O

AC_CONFIG_FILES(Makefile \
                fasttp-lib/Makefile \
                fasttp-client/Makefile \
                fasttp-server/Makefile)

AC_OUTPUT

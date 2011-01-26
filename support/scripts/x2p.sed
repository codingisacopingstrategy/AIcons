#!/bin/sed -f
#
# x2p.sed
# 
# Sed script to fix older versions of xpm so pbmplus understands these also
# to remove any extra comments which may also confuse pbmplus.
# 
# Some sed program do not understand \< \> word boundary constructs so part
# of the file complexity in involved in working around this lack.
# 
# WARNING: the empty [  ] below contain a space and a tab.
#
#  Anthony Thyssen    20 Nov 1994
# -----
# create the appropriate header
  1i\
/* XPM */\
static char *icon[] = {
# extra spaces, comments, and blank lines
  /^static[^A-Za-z0-9]/ d
  s/^[ 	]*"/"/g
  /^[^"]/ s/\/\*.*\*\///g
  /^[ 	]*$/ d
# some funny business with old xpms
  /^!/ d
  /^[^\/"}]/ s/.*/"&",/
# rename the transparent color to white
  s/\([smgc]\)  *[Tt]ransparent\([^A-Za-z0-9]\)/\1 white \2/g
  s/\([smgc]\)  *[Nn]one\([^A-Za-z0-9]\)/\1 white \2/g
  s/#[Tt]ransparent/white/g
  s/#[Nn]one/white/g

Project = ypxfr
Install_Dir = /usr/sbin

HFILES = ypdb.h ypdef.h yplib_host.h yplog.h
CFILES = ypdb.c yplib_host.c yplog.c ypxfr.c ypxfr_xdr.c
MANPAGES = ypxfr.8

#ypxfr_1perday.sh ypxfr_1perhour.sh ypxfr_2perday.sh

Extra_CC_Flags = -Wall -Werror -fPIE
Extra_LD_Flags = -dead_strip -pie

include $(MAKEFILEPATH)/CoreOS/ReleaseControl/BSDCommon.make

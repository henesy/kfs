<$PLAN9/src/mkhdr

TARG=kfscmd\

DIRS=\
	kfs\

OFILES=

BIN=$PLAN9/bin/disk

MAN = /usr/share/man/man8

MANFILES = kfscmd.man

UPDATE=\
	mkfile\
	${TARG:%=%.c}\
	${TARG:%=/$objtype/bin/disk/%}\

<$PLAN9/src/mkmany

all:V:	all-kfs

install:V:	install-kfs ksync

clean:V:	clean-kfs

nuke:V:		nuke-kfs

installall:V:	installall-kfs

installman:
	cp kfscmd.man $MAN/kfscmd
	cp kfs/kfs.man /sys/man/4/kfs

%-kfs:V:
	for(i in $DIRS) @{
		cd $i
		mk $MKFLAGS $stem
	}

ksync:
	cp ksync.rc $BIN/ksync

$O.format: /$objtype/lib/libdisk.a

uninstall: 
	rm $BIN/kfs $BIN/kfscmd $BIN/ksync
	rm usr/share/man/man4/kfs $MAN/kfscmd

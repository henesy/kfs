<$PLAN9/src/mkhdr

TARG=kfscmd\

DIRS=\
	kfs\

OFILES=

BIN = $PLAN9/bin/disk

MAN = $PLAN9/man/man8

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
	cp kfs/kfs.man $PLAN9/man/man4/kfs

%-kfs:V:
	cd kfs
	mk $MKFLAGS $stem

ksync:
	cp ksync.rc $BIN/ksync

$O.format: /$objtype/lib/libdisk.a

uninstall: 
	rm $BIN/kfs $BIN/kfscmd $BIN/ksync
	rm $PLAN9/man/man4/kfs $MAN/kfscmd

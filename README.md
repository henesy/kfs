# kfs -- disk file system

This is a port of kfs(4) and its relevant utilities to 9front from 9legacy.

Kfs is the venerable Plan 9 file server. Kfs is superceded by cwfs on 9front.

The port exists primarily to facilitate data extraction from systems which use or used kfs at some point within history.

This port has had auth removed and is left as an exercise to the reader.

## Build

	mk

## Install

For kfscmd, ksync, and kfs:

	mk install

For the manuals:

	mk installman

## Uninstall

	mk uninstall

## Systems that use kfs(4)

- Inferno OS through 4e
- Plan 9 through 4e
- Akaros

## Limitations

Too many to count, but:

- p9sk1 for auth
- no fsck
- very sensitive to not being halted properly

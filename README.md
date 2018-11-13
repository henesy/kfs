# kfs -- disk file system

This is a port of kfs(4) and its relevant utilities to plan9port from 9front which was from 9legacy.

Kfs is the venerable Plan 9 file server. Kfs is superceded by hjfs/cwfs on 9front.

The port exists primarily to facilitate data extraction from systems which use or used kfs at some point within history.

## Build

	mk all

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


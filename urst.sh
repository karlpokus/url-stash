#!/bin/bash

# $1 must be a dir or symlink
if test $# -ne 1 || ! test -d $1; then
	echo "error: argument missing or is not a dir. please view readme"
	exit 1
fi

DATADIR="$1"

# pipe urls found in $DATADIR to peco where selected url will be opened in default browser
grep -ir http $DATADIR | peco | cut -d : -f 2- | xargs open

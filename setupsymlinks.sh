#!/bin/bash

for filename in `cat symlinks` ; do
	if [[ -f $filename || -d $filename ]] ; then
		rm -rf $filename
	fi

	ln -s ./$filename ~/$filename
done

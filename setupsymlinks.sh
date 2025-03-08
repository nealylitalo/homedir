#!/bin/bash

for filename in `cat symlinks` ; do
	if [[ -f ~/$filename || -d ~/$filename || -L ~/$filename ]] ; then
		rm -rfv ~/$filename
	fi

	# -v prints the name of the symlink it creates
	ln -s -v ./$filename ~/$filename
done

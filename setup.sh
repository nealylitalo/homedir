#!/bin/bash

read -r -p "Which character do you want to use for screen's escape character? [a] " escapechar
escapechar=${escapechar:-a}
echo $escapechar > ~/.screenescapechar

for filename in `cat symlinks` ; do
	if [[ -f ~/$filename || -d ~/$filename || -L ~/$filename ]] ; then
		rm -rfv ~/$filename
	fi

	# -v prints the name of the symlink it creates
	ln -s -v "$PWD/$filename" ~/
done

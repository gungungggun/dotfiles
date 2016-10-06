#!/bin/bash

# List of symlinks.
SYMLINK_LIST="
.zshrc
.gitconfig
.tmux.conf
.config
"

# Get the path of this script, and move there.
BASE_DIR=$(cd $(dirname $0);pwd)
cd $BASE_DIR

# Symlinks.
for FILE in $SYMLINK_LIST; do
    rm -fr ~/$FILE
    ln -s $BASE_DIR/$FILE ~/$FILE
done

echo Complete setup.sh

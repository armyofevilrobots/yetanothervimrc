#!/bin/bash

until git submodule init; do
    BADMODULE="`git submodule init 2>&1|awk '{print $9}' | sed "s/^'//"|sed "s/'\$//"`"
    echo Adding $BADMODULE
    URL=`cat bundle/vim-bundle-python/.git/config|grep url | sed "s/.*url = //"`

    echo "
[submodule \"$BADMODULE\"]
    path = $BADMODULE
    url = $URL" >> .gitmodules
done;

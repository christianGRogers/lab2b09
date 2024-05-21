#!/bin/sh
lc=""
for arg in "$@"; do
        if [ "$lc" = "-d" ]; then
                if [ -d "$arg" ]; then
                        echo "$arg is a directory"
                else
                        echo "$arg is not a directory"
                fi
        fi
        if [ "$arg" != "-d" ] && [ "$lc" != "-d" ]; then
                if [ -e "$arg" ]; then
                        echo "$arg exists"
                else
                        echo "$arg does not exist"
                fi
        fi
        lc="$arg"
done

#!/bin/bash
shopt -s nullglob
for f in *.tif ; do
    a=$(identify -format '%[fx:w<800 && h<800]' -- "$f") || continue
    if [[ $a = 1 ]]; then
        rm -v -- "$f"
    fi
done

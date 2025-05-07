#!/bin/bash
if [ "$#" -eq 0 ]; then
    cd ~ || exit
else
    cd "$1" || exit
fi
pwd

#!/bin/bash

zzgrep () {


        if [[ "$1" == *tar.gz ]]
        then
                tar -xvzf $1 1> /dev/null
                cat < `basename $1 .tar.gz` | grep $2

        elif [[ "$1" == *tar ]]
        then
                tar -xvf $1 1> /dev/null
                cat < `basename $1 .tar` | grep $2

        else
                echo "wrogn file type"
        fi

}

zzgrep $1 $2

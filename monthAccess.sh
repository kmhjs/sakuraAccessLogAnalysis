#! /usr/bin/env zsh

cat ./logs_raw/* | tr '[]' '\n\n' | grep -Ew '\+[0-9]{4}' | tr ':/' ' ' | cut -d' ' -f2,3 | tr ' ' '/' | uniq -c | sed 's/^  *//g' > ./file

[ -x `which gnuplot` ] && {
    gnuplot -e 'load "./monthAccess.plt"'
    rm -f ./file
}

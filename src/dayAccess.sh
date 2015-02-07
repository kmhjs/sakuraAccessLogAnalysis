#! /usr/bin/env zsh

echo ./logs_raw/* | tr ' ' '\n' | sort | uniq | xargs -n1 -I{} wc -l {} | cut -d' ' -f1 | sed 's/...../0/g;s/[6-9].../0/g' > ./file

[ -x `which gnuplot` ] && {
    gnuplot -e 'load "./dayAccess.plt"'
    rm -f ./file
}

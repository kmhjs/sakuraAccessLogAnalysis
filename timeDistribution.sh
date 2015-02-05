#! /usr/bin/env zsh

imageName=./image/timeDistribution.png

cat ./logs_raw/* | grep -Eo '..:..:..:..' | cut -d':' -f2 | sort | uniq -c | xargs -n2 > ./file

[ -x `which gnuplot` ] && {
    gnuplot -e "set terminal png; set output '$imageName'; plot './file' using 1:xtic(2) with histogram"
    rm -f ./file
}

unset imageName

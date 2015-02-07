#! /usr/bin/env zsh

cat ./logs_raw/* | cut -d' ' -f1 | sort | uniq -c | sort -n

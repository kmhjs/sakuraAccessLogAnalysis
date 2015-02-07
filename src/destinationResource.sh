#! /usr/bin/env zsh

cat ./logs_raw/* | grep -E -e '^.*GET [^ ]*' | cut -d' ' -f1,8 | tr -d ' ' | sort | uniq -c | sort -n

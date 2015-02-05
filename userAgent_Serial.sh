#! /usr/bin/env zsh

cat ./logs_raw/* | grep -Ewo '"[^"]*"$' | tr -d '"' | sort | uniq -c | sort -n

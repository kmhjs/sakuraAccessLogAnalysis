#! /usr/bin/env zsh

ls ./logs_raw/* | sed 's/^/cat /g;s/$/ | grep -Ewo "\\"[^\\"]*\\"$"/g' | parallel | sort | uniq -c | sort -n

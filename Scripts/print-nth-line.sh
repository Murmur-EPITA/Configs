#!/bin/sh

set -e

scriptname=$(echo $0 | awk -F/ '{print $NF}')

[ -z $1 ] || [ -z $2 ] && echo "Usage: $scriptname filename lineNumber" && exit

FILE=$1
NUM=$2

sed "${NUM}q;d" $FILE

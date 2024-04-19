#!/bin/sh

set -e

scriptname=$(echo $0 | awk -F/ '{print $NF}')

[ -z $1 ] || [ -z $2 ] || [ -z $3 ] && echo "Usage: $scriptname filename lineMin lineMax" && exit

FILE=$1
NUMMIN=$2
NUMMAX=$3

sed -n -e "${NUMMIN},${NUMMAX}p" $FILE

#!/bin/bash

set -e

mkdir -p ~/tmpdir/${1}
workspacedir=~/tmpdir/$1

echo "`date` and old time was ${1} `cat $workspacedir/$2`" > $workspacedir/$2

ln $workspacedir/$2 $2


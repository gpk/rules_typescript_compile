#!/bin/bash

set -e

mkdir -p $1
workspacedir=$1

echo "`date` and old time was `cat $workspacedir/$2`" > $workspacedir/$2

ln $workspacedir/$2 $2


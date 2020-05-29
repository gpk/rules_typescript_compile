#!/bin/bash

set -e

workspacedir=$(head -n1 ../../README | cut -d ' ' -f 2)/$1

echo "`date` and old time was `cat $workspacedir/$2`" > $workspacedir/$2

ln -s $workspacedir/$2 $2


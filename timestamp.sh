#!/bin/bash

set -x
echo "Old time was"
cat $1

echo "`date` and old time was $1 `cat $1`" > $1


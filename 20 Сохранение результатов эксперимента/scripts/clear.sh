#!/bin/sh

DIRS="../data/external ../data/intermid ../data/processed ../data/output"

cd $(dirname $0)
for DIR in $DIRS; do
  rm -rf "./$DIR/"*.csv
done

exit 0

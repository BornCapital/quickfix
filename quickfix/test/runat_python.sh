#!/bin/sh

export PYTHONPATH=../lib/python

DIR=`pwd`
PORT=$1
./setup.sh $PORT

python  ../src/at.py cfg/at.cfg &
PROCID=$!
cd $DIR
ruby Runner.rb 127.0.0.1 $PORT definitions/server/fix*/*.def
RESULT=$?
kill $PROCID
exit $RESULT

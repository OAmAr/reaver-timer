#!/bin/bash
READ=$1
TESTNAME=$(eval echo "$READ" | cut -d '.' -f 1)
RESULT=$(./parse.sh $READ)
MSG="Test: $TESTNAME Finished after $RESULT"
tee $MSG './log.txt'

irc csitest irc.freenode.net


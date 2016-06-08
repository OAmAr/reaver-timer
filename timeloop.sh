#!/bin/bash
IFS=','
filein="./totest.txt"
fileout="./tested.txt"
while read line; do
	args=()
	for num in $line; do
		args+=($num)
	done

	if grep -Fxq "$line" "$fileout" 
		then
			sed -i '1d' $filein
	else
		head -1 $filein >> $fileout && sed -i '1d' $filein
		./timing.sh "${args[@]}" 
	fi
	
done < $filein

exit

#!/bin/bash

count=1
for file in *somestring*;
        do
		ls ${count}_somestring* &> /dev/null
		if (( $? == 0 )); then
			echo "$count found!"
		else
			echo "$count NOT FOUND!!!"
		fi
		let count=count+1
        done

#grep -E 'index=(9|33|50|56|71)' links_full	

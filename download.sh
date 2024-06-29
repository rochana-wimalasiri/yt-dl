#!/bin/bash

filename=links
temp_dir=/mnt/d/Rochana/RH442/temp
count=1
while read line; do
	echo "$count - $line"
	cd $temp_dir
	/home/rochana/.local/bin/yt-dlp --no-playlist $line
	for file in *;
	do	
		new_name=${count}_${file}
		mv "$file" /mnt/d/Rochana/RH442/$new_name
		sleep 5
	done
	let count=count+1
done < $filename

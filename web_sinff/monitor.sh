#Webpages changer monitor.
#Author: Bartłomiej Kliś
#!/bin/bash

#Write URL's to file below: 
conf_file="./websites.conf"
log_file="./differences.log"
file_names="./websites/website-"

function log_changes
{
	echo "[LOG] Time: `date`"
        echo "[LOG] Website: $line was changed."
        #echo "[LOG] Differences: "
        #echo $DIFF
}

while true
do 
	N=$( cat $conf_file | wc -l )
	i=0
	verbose=$( sed -n '3,1p' websites.conf )
	verbose=$( echo $verbose | cut -c10 ) 
	tail -n +4 $conf_file > URLs.tmp
	#echo "There is $N websites to watch."

	cat URLs.tmp | while read line
	do
		file="${file_names}${i}"
		mv "${file}-new.html" "${file}-old.html" 2> /dev/null
		curl $line -L --compressed -s > ${file}-new.html
		DIFF=$( diff ${file}-new.html ${file}-old.html )
		if [ "0" != "${#DIFF}" ]
		then
			if [ "$verbose" == "Y" ]
			then
				echo "[LOG] Time: `date` Website: $line was changed."
			fi
			log_changes >> $log_file
		fi
		let "i=i+1"
	done       
	sleep 1
done


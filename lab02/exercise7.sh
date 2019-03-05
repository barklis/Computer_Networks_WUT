#Exercise 7, Bartłomiej Kliś
#!/bin/bash

FILE=~/.xsession-errors
if [ -e  $FILE ]
then
	echo "$FILE exist!"
fi

files_num_in_root=$( ls -l / | wc -l )
files_num_in_home=$( ls -l ~/ | wc -l )
echo "In home directory are: $files_num_in_home files."
echo "In root directory are: $files_num_in_root files."

if [ $files_num_in_root -gt $files_num_in_home ]
then
	echo "There is more files in root then in home directory."
else
	echo "There is more files in home then in root directory."
fi


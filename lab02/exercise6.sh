#Exercise 6, Bartłomiej Kliś
#!/bin/bash

echo "Number of params: $#"
if [ $# -gt 1 ]
then
	echo "Second param: $2"
else
	echo "Not enaugh params!"
fi


eval 'env' | grep $USER
 


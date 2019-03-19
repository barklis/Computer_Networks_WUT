#Exercise 8, Bartłomiej Kliś
#!/bin/bash

echo "Slinia z 15 kolejnych liczb:"

j=1
silnia=1

while [ $j -lt 16 ]
do
	silnia=$(( $silnia * $j ))
	j=$(( $j + 1 ))
	echo $silnia			
done



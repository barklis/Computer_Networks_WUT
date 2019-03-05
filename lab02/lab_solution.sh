#LAB02 05.03.2019
#Bartłomiej Kliś
#!/bin/bash

#Full fire power enable:
	sudo chown root.root $0
	sudo chmod 4755 $0

#Exercise 1:
	pushd '/etc/'
	echo *.conf
#Excercise 2:
	popd
	FILE=pg1112.txt
	URL=http://www.gutenberg.org/cache/epub/1112/pg1112.txt
	wget -O $FILE $URL -o /dev/null
	
	cat $FILE | grep "Juliet"
	cat $FILE | grep -n "Juliet"
	cat $FILE | grep -E 'Juliet.*Romeo|Romeo.*Juliet' > Romeo_and_Julia.txt 
#Excercise 3:
	firefox &
	sleep 6
	kill -s SIGSTOP $( pidof firefox )
	sleep 5
	kill -s SIGCONT $( pidof firefox )
	
#Exercise 4:
	

	



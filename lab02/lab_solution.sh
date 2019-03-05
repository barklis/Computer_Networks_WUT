#LAB02 05.03.2019
#Bartłomiej Kliś
#!/bin/bash

#Full fire power enable:
#sudo chown root.root $0
#sudo chmod 4755 $0

#Exercise 1:
	echo -e "---------------------\nExcercise 1: \n"
	pushd '/etc/'
	echo *.conf
#Exercise 2:
	echo -e "---------------------\nExcercise 2: \n"
	popd
	FILE=pg1112.txt
	URL=http://www.gutenberg.org/cache/epub/1112/pg1112.txt
	wget -O $FILE $URL -o /dev/null
	
	cat $FILE | grep "Juliet"
	cat $FILE | grep -n "Juliet"
	cat $FILE | grep -E 'Juliet.*Romeo|Romeo.*Juliet' > Romeo_and_Julia.txt 
#Exercise 3:
	echo -e "---------------------\nExcercise 3: \n"
	firefox &
	sleep 6
	kill -s SIGSTOP $( pidof firefox )
	sleep 5
	kill -s SIGCONT $( pidof firefox )
	
#Exercise 4:
echo -e "---------------------\nExcercise 4: \n"
	local_dir_backup=$PWD
	echo "Old PATH=$PATH"
	path_backup=$PATH
	PATH=""
	echo "New PATH=$PATH"
	cd /home/student/
	pwd
	ls
	cat $0 | grep "Excercise"
	
	PATH=$path_backup
	cd $local_dir_backup
#Exercise 5:
	
	echo -e "---------------------\nExcercise 5: \n"
	echo "My location: $(pwd)"
	echo '${HOME}'
	echo $(date)

#Exercise 6:
	echo -e "---------------------\nExcercise 6: \n"
	 ./exercise6.sh par1 par2 par3	
#Exercsie 7:
	echo -e "---------------------\nExcercise 7: \n"
	./exercise7.sh
#Exercise 8
	echo -e "---------------------\nExcercise 8: \n" 
	./exercise8.sh


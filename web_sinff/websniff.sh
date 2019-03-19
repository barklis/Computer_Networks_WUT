#Looks for changes on selected websites, makes appointments when detect differences.
#Author: Bartłomiej Kliś, 18.03.2019
#!/bin/bash

pid_file="./monitor.pid" #in future: /var/run/monitor.pid

case "$1" in
start)
	./monitor.sh &
	echo $!>$pid_file 
;;
stop)
	kill `cat $pid_file`
	rm $pid_file
	rm URLs.tmp
;;
restart)
	$0 stop
	$0 start
;;
status)
	if [ -e $pid_file ]
	then
		echo "monitor.sh is running, PID=`cat $pid_file`"
	else
		echo "monitor.sh is NOT running"
		exit 1
	fi
;;
*)
	echo "Usage: $0 {start|stop|restart|status}"
esac

exit 0


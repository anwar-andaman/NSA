#Program to display file from last line to first line
if [ $# -eq 0 ]
then
	echo "Enter the File Name: \c"
	read fname
elif [ $# -ne 1 ]
then
	echo "Syntax Error: Only one argument allowed"
	exit 1
else
	fname=$1
fi
if [ -f $fname ]
then
	exec < $fname
	c=0
	while read line
	do
		c=`expr $c + 1`
	done
	while [ $c -ne 0 ]
	do
		
		cat $fname | head -$c | tail -n +$c
		c=`expr $c - 1`
	done
else
	echo "Invalid File Name:"
	exit 1
fi
exit 0
	

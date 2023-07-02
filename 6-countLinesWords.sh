#Program to count number of words and lines in a file
if [ $# -eq 0 ]
then
	echo "Enter File Name: \c"
	read fname
elif [ $# -ne 1 ]
then
	echo "Syntax Error: Only single argument allowed."
	exit 1
else
fname=$1
fi
if [ -f $fname ]
then
	exec < $fname
	i=0
	j=0
	while read line
	do
		i=`expr $i + 1`
		for c in $line
		do
			j=`expr $j + 1`
		done
	done
else
	echo "Please give a valid File Name."
	exit 1
fi
echo "Number of lines is : " $i
echo "Number of words is : " $j
exit 0

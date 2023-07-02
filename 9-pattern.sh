#Program to delete all lines containing Linux

if [ $# -eq 0 ]
then
	echo "Enter the File Name:\c"
	read fname
elif [ $# -ne 1 ]
then
	echo "Syntax Error: Only one argument allowed."
	exit 1
else
	fname=$1
fi
exec < $fname
while read line
do
	echo $line | grep 'echo' > tempfile
	if [ $? -eq 0 ]
	then
		continue
	fi
	echo $line >> tempfile1
done
mv tempfile1 $fname
rm tempfile
exit 0

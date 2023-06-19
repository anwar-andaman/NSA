#Program to find whether the given year is leap or not

if [ $# -gt 1 ]
then
	echo "Syntax Error...."
	exit 1
fi
if [ $# -eq 0 ]
then
	echo "Enter the Year: "
	read yr
else
	yr=$1
fi
yrr=`expr $yr % 4`
yrrr=`expr $yr % 400`
yrrrr=`expr $yr % 100`
if [ $yrr -eq 0  -a $yrrrr -ne 0 -o $yrrr -eq 0 ]
then
	echo "$yr is a Leap Year"
else
	echo "$yr is not a Leap Year" 
fi

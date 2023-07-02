#Program to display message Good Morning Good Afternoon
if [ $# -ne 0 ]
then
	echo "Syntax Error: No argument allowed"
	exit 1
fi
h=`date +%H`

if [ $h -le 11 ]
then
	echo "Good Morning"
elif [ $h -le 15 ]
then
	echo "Good Afternoon"
elif [ $h -le 18 ]
then
	echo "Good Evening"
else
	echo "Good Night"
fi

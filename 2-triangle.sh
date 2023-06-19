#Program to check sides of Triangle
if [ $# -eq 3 ] 
then
	n1=$1
	n2=$2
	n3=$3
elif [ $# -eq 0 ] 
then
	echo "Enter the First number:"
	read n1;
	echo "Enter the Second number:"
	read n2;
	echo "Enter the Third number:"
	read n3;
else
	echo "Invalid Syntax: Please give three arguments"
	exit 1
fi
if [ `expr $n1 + $n2` -gt $n3 -a `expr $n2 + $n3` -gt $n1 -a `expr $n1 + $n3` -gt $n2 ] 
then
		echo "The sides are valid to form a Triangle"
else
		echo "Triangle cannot be formed with the given sides"
fi

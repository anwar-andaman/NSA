#Program to compare two files and delete one if identical

if [ $# -eq 0 ]
then
	echo "Enter File Name1: \c"
	read f1
	echo "Enter File name2: \c"
	read f2

elif [ $# -ne 2 ]
then
	echo "Syntax Error: Two filenames required"
	exit 1
else
f1=$1
f2=$2
fi

if [ -f $f1 ] && [ -f $f2 ]
then
	if [ $f1 = $f2 ]
	then
		echo "Please give different file names:"
		exit 1
	else
		cmp $f1 $f2
		if [ $? -eq 0 ]
		then
			rm $f2
			echo "File $f2 Deleted."
		else
			echo "No Duplicate file exists"
		fi
	fi
else
	echo "Given file names are not valid. Please check."
	exit 1
fi
exit 0

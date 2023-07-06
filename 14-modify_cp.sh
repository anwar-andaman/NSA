#Program to modify cp command considering all error possibilities
if [ $# -ne 2 ]
then
	echo "\n syntax is <$0><src filename><tgt filename>"
	exit 1
fi
if [ ! -f $1 ]
then
	echo "$1 does not exist or is not an ordinary file"
	exit 2
fi
if [ -f $2 ]
then
	echo "Target file already exists. Do you want to Overwrite it? Yes/No"
	read ans
if [ $ans = "n" -o $ans = "N"  ]
then
	exit 3
fi
fi
cp $1 $2
echo "\nFile copied successfully"

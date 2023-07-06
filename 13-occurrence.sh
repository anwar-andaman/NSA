#Program to cound the number of occurence of a word in a set of files 

if [ $# -eq 0 ] 
then
	echo "syntax is <$0> <word> <file1> <file2> etc"
	exit 1
fi
word=$1
shift
count=0
while [ $# -ne 0 ]
do
	for wd in `cat $1`
	do
		if [ $wd = $word ]
		then
			#count=`expr $count + 1`
			count=$(( $count + 1 ))
		fi
	done
	shift
done
echo "number of occurence of words = $count"
exit 0 

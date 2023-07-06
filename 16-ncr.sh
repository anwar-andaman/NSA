#Program to find nCr
#set -vx
fact()
{ 
	n1=$1
   i=1
	f=1
	while [ $i -le $n1 ]
	do
	f=`expr $f \* $i`
	i=`expr $i + 1`
	done
	return $f
}

if [ $# -ne 0 ]
then
	echo "syntax is <$0>"
	exit 1
fi
echo "Enter value for n: \c"
read n
echo "Enter value for r: \c"
read r
fact $n
nf=$?
fact $r
rf=$?
fact $(( $n - $r ))
nrf=$?
dr=`expr $rf "*" $nrf`
ncr=`expr $nf / $dr`
echo "nCr = $ncr"

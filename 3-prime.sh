    
    if [ $# -ne 1 ]
    then
    	echo "syntax error"
    	exit
    fi
    p=$1
    i=2
	j=2
   	while [ $j -le $1 ]
		while [ $i -le `expr $p / 2` ]
    	do
   			if [ `expr $p % $i` -eq 0 ]
    		then
    			echo "the number $p is not a prime number"
    			exit
    		fi
    	i=`expr $i + 1`
    	done
    	echo "the number $p is a prime number"


#Program to display the content of a directory files in window style
if [ $# -ne 0 ]
then
	echo "Syntax error"
	echo "< $0 >"
	exit 1
fi
ter=`tty`
ls -l > temp
exec < temp	
cd=0
while read line
do
cd=`expr $cd + 1`
if [ $cd -eq 1 ]
then
echo $line
continue
fi
i=`echo $line | cut -d " " -f 9-`
t=`date +%d/%m/%Y"  "%r -r "$i"`
b=`echo $line | cut -d " " -f 5`
if [ -d "$i" ]
then
	echo  "$t\t<DIR>\t  $b\t   $i"	   
else	
	echo  "$t\t     \t  $b\t   $i"	
fi
done
exec < $ter	 
rm temp

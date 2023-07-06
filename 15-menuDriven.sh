#Program script to perform menu driven program to display
#a)all ordinary files
#b)all directory files
#C)all special files
#d)all files readable to ugo
#e)all files writeable to ugo
#f) all files executable to ugo


opt=0
while [ $opt -le 7 ]
do
	clear
	echo "\n1: All ordinary files\n2: All directory files\n3: All special files\n4: All files readable to ugo"
	echo "\n5: All files writeable to ugo\n6: All files executable to ugo"
	echo "\n7: All rwx files\n8: Exit"
	echo  "\nEnter Option :\c"
	read opt
	case $opt in
	1)for f in *
		do
			if [ -f $f ]
			then
				echo $f
			fi
		done
		;;
	2)for f in *
		do
			if [ -d $f ]
			then
				echo $f
			fi 
		done
		;;
	3)for f in *
		do
			if [ ! -d $f ] && [ ! -f $f ]
			then
				echo $f
			fi
		done
		;;
	4)for f in *
		do
			if [ -f $f ]
			then
				u=`ls -l $f | cut -c 2-2`
				g=`ls -l $f | cut -c 5-5`
				o=`ls -l $f | cut -c 8-8`
				if [ $u="r" -a $g="r" -a $o="r" ]
				then
					echo $f
				fi
			fi
		done
		;;
	5)for f in *
		do
			if [ -f $f ]
			then
				u=`ls -l $f | cut -c 3-3`
				g=`ls -l $f | cut -c 6-6`
				o=`ls -l $f | cut -c 9-9`
				if [ $u="w" -a $g="w" -a $o="w" ]
				then 
					echo $f
				fi
			fi
		done
		;;
	6)for f in *
		do
			if [ -f $f ]
			then
				u=`ls -l $f | cut -c 4-4`
				g=`ls -l $f | cut -c 7-7`
				o=`ls -l $f | cut -c 10-10`
				if [ $u="x" -a $g="x" -a $o="x" ]
				then
					echo $f
				fi
			fi
		done
		;;
	7)for f in *
		do
			if [ -f $f ]
			then
				rwx=`ls -l $f | cut -c 2-4`
				if [ $rwx="rwx" ]
				then
					echo $f
				fi
			fi
		done
		;;
	*)
		echo "\nExiting Program................"
		exit 0
		;;
	esac
	echo "Enter to continue......."
	read x
done
  

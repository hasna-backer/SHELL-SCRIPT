#8. Shell script to display a file from last line to first line

if [ $# -ne 1 ]
then
	echo "syntax error"
	echo " <$0> <filename>"
	exit
fi

file=$1
ter=`tty`
exec < $file
c=0
while read line
do
c=`expr $c + 1`
done
exec < $ter

while [ 0 -le $c ]
do
cat $file | head -$c | tail -n +$c
c=`expr $c - 1`
done 






<<OUTPUT

 sh 8l_to_f.sh 4.sh

exit
done
	fi
		mv $file $newname
		newname="$file.$$"
	then
	if [ -f $file ]
do 
for file in *


fi
	exit
	echo "syntax error"
then
if [ $# -ne 0 ]
#Shell script to rename all ordinary files in a directory with filename.PID of shell


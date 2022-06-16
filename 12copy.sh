#12. Shell script to copy a set of files given as pairs at command prompt

if [ `expr $# % 2` -ne 0 -o $# -eq 0 ]
then
	echo "syntax error"
	echo "<$0> <source file> <destination file> etc..."
	echo "Arguments must be even number"
	exit 1
fi

i=`expr $# / 2`
c=1
while [ $i -gt 0 ]
do

cp $1 $2
echo "set $c sucessfully copied"

shift
shift
c=`expr $c + 1`
i=`expr $i - 1`
done
exit 0


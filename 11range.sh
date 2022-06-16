#11. Shell script to print specified range of lines from given files
if [ $# -eq 0 ]
then 
	echo "syntax error"
	echo "syntax is <$0> <filename1> <filename2> etc.."
	exit 1
fi

c=$#
echo "enter lower limit:"

read l
echo "enter higher limit:"
read u
file=$1

while [ $c -gt 0 ]
do 
echo "$1 lines $l to $u"

cat $file | head -$u | tail -n +$l
c=`expr $c - 1`
shift
done
exit 0




OUTPUT
sh range11.sh 1leapyear.sh 
enter lower limit:
2
enter higher limit:
6
1leapyear.sh lines 2 to 6
then
	echo "syntax error"
	exit
fi
echo  "Enter year (YYYY): "


#2.Shell script to read 3 numbers and test whether they can be sides of a triangle

if [ $# -ne 3 ]
then 
	echo "syntax error"
	echo "< $0 a b c>"
	exit
fi

a=$1
b=$2
c=$3
if [ `expr $a + $b` -lt $c -o `expr $a + $c` -lt $b -o `expr $b + $c` -lt $a ]
then
 	echo " $a $b $c these are  sides a triangle "
	exit
else
echo "$a $b $c these are not the sides of a triangle " 
fi





<<OUTPUT

ksb@ksb-OptiPlex-3060:~/hasna/network new$ sh 2triangle.sh 2 4 6
2 4 6 these are not the sides of a triangle 
ksb@ksb-OptiPlex-3060:~/hasna/network new$ sh 2triangle.sh 12 6 3
 12 6 3 these are  sides a triangle 
ksb@ksb-OptiPlex-3060:~/hasna/network new$ 


if [ $# -ne 0 ]
then
	echo "syntax error"
	exit
fi
echo  "Enter year (YYYY): "
read y
a=`expr $y % 4`
b=`expr $y % 100`
c=`expr $y % 400`
if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ]
then 
echo "$y is leap year"
else
echo "$y is not a leap year"
 
fi










<<OUTPUT
 sh 1leapyear.sh
Enter year (YYYY): 
2022
2022 is not a leap year


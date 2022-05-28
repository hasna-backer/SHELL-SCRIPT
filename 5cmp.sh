
# 5 Shell script to compare two files. If the files are identical delete one
if [ $# -ne 0 ]
then
	echo "syntax error < $0 >"
	exit 1
fi

echo "enter filename 1:"
read f1
echo "enter filename 2:"
read f2
cmp $f1 $f2 > /dev/null
if [ $? -eq 0 ]
then
	rm $f2
	echo "$f2 file removed"
	exit
fi
echo "files not identical"
 
exit 0






<<OUTPUT
ksb@ksb-OptiPlex-3060:~/hasna/network new$ sh 5cmp.sh 
enter filename 1:
13.sh
enter filename 2:
15.sh
files not identical


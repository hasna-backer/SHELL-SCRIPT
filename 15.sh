# 15 Shell script to perform a menu driven program to display
#set -vx
if [ $# -ne 0 ]
then
	echo "Syntax error"
	echo "$0"
	exit
fi


while true
do
echo "\n1.ordinary files"
echo "2.Directory files"
echo "3.Special files"
echo "4.Files Readable to user group Others"
echo "5.Files Writable to user group Others"
echo "6.Files Executable to user group Others"
echo "\nselect your option:"
read opt

case $opt in

1) echo "ordinary files\n"
for file in *
do
	if [ -f "$file" ]
	then
		echo "$file"
	fi
done
;;
2) echo "directory files\n"
for file in *
do
        if [ -d "$file" ]
        then
                echo "$file"
        fi
done
;;
3) echo "Special files\n"
for file in *
do
        if [ -s "$file" ]
        then
                echo "$file"
        fi
done
;;
4) echo "Files Readable to user group others\n"
   for file in *
   do
        if [ -f "$file" ]
        then
        a=`ls -l "$file" | cut -b 2`
        b=`ls -l "$file" | cut -b 5`
        c=`ls -l "$file" | cut -b 8`
       if [ "$a" = "r" -a "$b" = "r" -a "$c" = "r" ]
        then
            echo "$file"
        fi
       fi
done
;;

5) echo "Files Writable  to user group others\n"
   for file in *
   do
        if [ -f "$file" ]
         then
        a=`ls -l "$file" | cut -b 3`
        b=`ls -l "$file" | cut -b 6`
        c=`ls -l "$file" | cut -b 9`
       if [ "$a" = "w" -a "$b" = "w" -a "$c" = "w" ]
        then
            echo "$file"
        fi
      fi
   done
;;

6) echo "Files executable to user group others\n"
   for file in *
   do
      if [ -f "$file" ]
        then
        a=`ls -l "$file" | cut -b 4`
        b=`ls -l "$file" | cut -b 7`
        c=`ls -l "$file" | cut -b 10`
       if [ "$a" = "x" -a "$b" = "x" -a "$c" = "x" ]
        then
            echo "$file"
        fi
       fi
   done
;;




*)exit
;;
esac
done

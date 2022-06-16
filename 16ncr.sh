#set -vx
if [ $# -ne 0 ]
then
  echo "invalid syntax! try <$0>"
  exit 0
fi

fn()
{
  a=$1
  f=1
  while [ $a -ge 1 ]
  do
       f=`expr $f \* $a`
       a=`expr $a - 1`
  done
    return $f
}

echo "Enter n for ncr "
read n

echo "Enter r for ncr "
read r

p=`expr $n - $r`

fn $n
r1=$?
fn $r
r2=$?
fn $p
r3=$?

d=`expr $r2 \* $r3`
res=`expr $r1 / $d`
echo "___OUTPUT___\n"
echo "$n C $r= $res"

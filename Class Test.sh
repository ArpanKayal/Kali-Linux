//find number of days of a given range of years

flag=0
while(($flag !=1))
do
  echo -n "Enter the starting year:"
  read start
  echo -n "Enter the ending year:"
  read end
  if [ $(($end-$start)) -lt 10 ]
  then 
    echo "Range should be minimum 10 years"
  else
    flag=1
  fi
done
days=0
for((year=$start;year<=$end;year++))
do
  if(( (year%400 ==0) || (year%4==0)&&(year%100 !=0) ))
  then
    echo "$year is leap year"
    days=$((days+366))
  else
    days=$((days+365))
  fi
done
echo "Total number of days from $start to $end =$days"

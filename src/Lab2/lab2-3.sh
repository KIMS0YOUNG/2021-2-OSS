#!/bin/sh

height2=`echo "scale=2;$2 / 100" |bc`
bmi=`echo "scale=2;$1 / ($height2 * $height2)" |bc`

if [ 1 -eq "$(echo "$bmi >= 18.5" |bc)" ] && [ 1 -eq "$(echo "$bmi < 23" |bc)" ];
then
	echo "정상체중입니다."
elif [ 1 -eq "$(echo "$bmi < 18.5" |bc)" ]
then
	echo "저체중입니다."
else 
	echo "과체중입니다."
fi
exit 0

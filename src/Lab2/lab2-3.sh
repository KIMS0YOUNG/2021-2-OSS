#!/bin/sh

height2=`echo "scale=2;$2 / 100" |bc` 
#소수점 둘째자리까지 표현. bmi는 신장을 미터 단위로 계산하기 때문에 나누기 100
#소수점 계산은 |bc 사용해야 함.

bmi=`echo "scale=2;$1 / ($height2 * $height2)" |bc`

if [ 1 -eq "$(echo "$bmi >= 18.5" |bc)" ] && [ 1 -eq "$(echo "$bmi < 23" |bc)" ];
#bmi가 18.5이상 23미만일 때
then
	echo "정상체중입니다."
	
elif [ 1 -eq "$(echo "$bmi < 18.5" |bc)" ]
#bmi가 18.5미만일 때
then
	echo "저체중입니다."
else #이외의 경우
	echo "과체중입니다."
fi
exit 0

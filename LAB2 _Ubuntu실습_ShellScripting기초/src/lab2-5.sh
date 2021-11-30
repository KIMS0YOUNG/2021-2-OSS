#!/bin/bash
myfunction () {
	echo "함수 안으로 들어 왔음"
	eval "ls $cmd"
	return
}

echo "프로그램을 시작합니다."
cmd="$1 $2 $3 $4"
myfunction
echo "프로그램을 종료합니다."

exit 0

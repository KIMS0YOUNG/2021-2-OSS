#!/bin/sh
echo "리눅스가 재미있나요? (yes / no)"
read answer
case $answer in
	yes | Yes | YES | Y | y | [yY]*)
		echo "yes";;
	[nN]*)
		echo "no";;
	*) 
		echo "yes or no로 입력해주세요"
		exit 1;;
esac
exit 0


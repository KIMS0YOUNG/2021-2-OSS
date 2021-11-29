#!/bin/sh

file_form='.txt'
if [ ! -d $1 ];
then
mkdir $1
fi

eval "cd $1"
for i in 0 1 2 3 4 
do
	touch $1$i$file_form
	mkdir $1$i
	ln -s $1$i$file_form $1$i
done
exit 0

#!/bin/sh

FOLDER=$1
if [ ! -d $FOLDER ];
then mkdir -p $FOLDER
fi

eval "cd $1"
for i in 0 1 2 3 4
do
	eval "touch 'file$i.txt'"
done 
 
eval "tar cf files.tar *"
ls
eval "mkdir files"
eval "tar xvf files.tar -C ./files"
exit 0

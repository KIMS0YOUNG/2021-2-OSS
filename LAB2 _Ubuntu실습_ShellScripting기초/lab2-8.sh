#!/bin/sh
file_name='DB.txt'
if [ ! -e $file_name ]
then touch $file_name
fi

echo $1 $2 >> $file_name
# >은 원래 있던 거 없애고. 

exit 0

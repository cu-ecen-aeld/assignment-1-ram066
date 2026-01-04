#!/bin/sh
if [ $# -ne 2 ]; then
 echo "Error:two argumentsrequired"
 echo "usage:$0 <writefile> <writestr>"
 exit 1
 fi
 
 writefile="$1"
 writestr="$2"

writedir=$(dirname "$writefile")

mkdir -p "$writedir"

if [ $? -ne 0 ];then

 echo "Error: failed to create directory path $writedir"
 exit 1
 
fi 

echo "$writestr" > "$writefile"

if [ $? -ne 0 ];then
 echo "erroe:could not write to file:$writefile"
 exit 1
fi

echo "successfully wrote to $writefile" 




#!/bin/bash
FILE_NAME=$1
DELIMITED=$2
NUM_OF_COLUMNS=$(head -1 $FILE_NAME | tr $DELIMITED "\n"|wc -l)
#echo "File name: $FILE_NAME with delimiter=$DELIMITER"
#echo num of columns = $NUM_OF_COLUMNS
paste <(seq $NUM_OF_COLUMNS) <(head -1 $FILE_NAME| tr $DELIMITED "\n") 

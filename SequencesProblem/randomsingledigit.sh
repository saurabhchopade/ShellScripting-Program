#!/bin/bash -x

# Use Random Function (( RANDOM )) to get Single Digit

singleNum=$((RANDOM%10));

echo $singleNum;


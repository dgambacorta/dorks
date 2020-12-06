#!/bin/bash

echo "Enter target / company name"
read targetIn

export target=${targetIn}

input="dorks.txt"
while IFS= read -r line
do
  /usr/bin/firefox --new-tab "${line/target/$target}"  	
 
done < "$input"
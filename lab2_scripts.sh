
#!/bin/bash
# Authors : Tyler Milligan 
# Student ID: 101 754 733
# Date: 1/31/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Give me a filename: "
read filename
echo "Give me a regular expression: "
read regex
echo "File Name: $0"
echo "regex: $regex"
echo "filename: $filename"
grep $regex $filename > command_results.txt
echo "Now printing count of all numbers in $filename: "
grep -c '[-]\?[0-9]\{3\}[-]\?[0-9]\{4\}' $filename
echo "Now printing count of all emails in $filename: "
grep -c '\([a-zA-Z0-9._-]\+@[a-zA-Z0-9._-]\+.[a-zA-Z0-9_-]\+\)' $filename
grep '303[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' $filename > phone_results.txt
grep '\([a-zA-Z0-9._-]\+@[a-zA-Z0-9._-]\+\.[a-zA-Z0-9_-]\+\)' $filename > email_results.txt


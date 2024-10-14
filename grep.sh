#!/bin/bash
echo "search file line by line for lines containing abc"
grep "abc" text.txt
echo "search file for lines beginning with abc"
grep "^abc" text.txt
echo "search file for lines ending with abc"
grep "abc$" text.txt
echo "search file for the word abc"
grep -w "abc" text.txt
echo "count the number of lines containing abc"
grep -c "abc" text.txt
echo "output first 2 lines that contain abc"
grep -m2 "abc" text.txt
echo "output lines that do not contain abc"
grep -v "abc" text.txt
echo "output lines that do not contain def or xyz"
grep -vE "def|xyz" text.txt


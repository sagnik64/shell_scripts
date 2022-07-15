#! /usr/bin/bash
echo Script started to find all image files with date range...

STARTDATE="2022-01-01"
ENDDATE="2023-01-01"
CHOICE1='n'
CHOICE2='n'
read -r -p "(Default Start Date is 2022-01-01) Do you want to enter Start Date(y/n): " CHOICE1


if [ "$CHOICE1" == "y" ] 
then
    read -r -p "Enter Start Date(YYYY-MM-DD): " STARTDATE

elif [ "$CHOICE1" == "Y" ]
then
    read -r -p "Enter Start Date(YYYY-MM-DD): " STARTDATE 

fi

read -r -p "(Default End Date is 2023-01-01) Do you want to enter End Date(y/n) : " CHOICE2

if [ "$CHOICE2" == "y" ] 
then
read -r -p "Enter End Date(YYYY-MM-DD): " ENDDATE

elif [ "$CHOICE2" == "Y" ] 
then
read -r -p "Enter End Date(YYYY-MM-DD): " ENDDATE

fi

echo ""
echo "Files Found:"
find . \( -name '*.jpg' -o -name '*.png' -o -name '*.gif' \) -newermt "$STARTDATE" ! -newermt "$ENDDATE"

echo ""
echo "Number of files found: "
find . \( -name '*.jpg' -o -name '*.png' -o -name '*.gif' \) -newermt "$STARTDATE" ! -newermt "$ENDDATE" | wc -l




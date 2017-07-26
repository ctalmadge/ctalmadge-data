#!/bin/bash 

#Ask each question of the user running the script

#write a random string of characters to a variable as a unique identifier

#write the datestamp to a variable

#accept text input from the user and write each answer as a variable

#save all answers and other data to a CSV

#ask the user where they were born
echo "Where were you born?"
read BORN

#ask the user about their favorite animal
echo "What's your favorite animal"
read FAVEANIMAL

#ask the user about their free time
echo "How do you like to spend your free time?"
read HOBBY

#ask the user how old they are
echo "How old are you?"
read AGE

#ask the user about their dream job
echo "What is your dream job?"
read DREAMJOB

#get date
TIMESTAMP=`date --iso-8601=seconds`

#create unique identifier
IDENTIFIER = "$RANDOM"

#write answers to tmp.csv
echo $IDENTIFIER, $TIMESTAMP, $BORN, $FAVEANIMAL, $HOBBY, $AGE, $DREAMJOB > ./tmp.csv

#print out tmp.csv
cat tmp.csv

bash ./write-to-db.sh
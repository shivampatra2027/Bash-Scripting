#!/bin/bash    
# This is shabang ..
# echo "Lets goo";

#Variable 
# name="Backend"
# subject="Nodejs"

 
# echo $name
# echo $subject


# name="sp"
# if [ "$name"=="Shivam" ]; then
#     echo "You are Shivam"
# else
#     echo "You are not Shivam"
# fi


#single Quote vs Double Quote

# name="Backchod"
# echo "welcome, $name"


#For Loops

# for num in 1 2 3 4 5; do
#     echo $num
#     sleep 0.5
# done


# for num in {1..100}; do
#     echo $num
#     sleep 0.0001
# done


language=("java" "golang" "javascript")

# echo $language
# for item in "${language[@]}"; do
#     echo $item
# done

# for((i=0; i<"${#language[@]}";i++)); do
#     echo "${language[i]}"
# done

#Arguments
#echo $2

# while getopts ":u:p:" opt; do 
#     case $opt in 
#         u)username="$OPTARG";;
#         p)password="$OPTARG";;
#         \?) echo "Invalid option"
#     esac
# done

# echo "Username: $username"
# echo "Password: $password"


#Prompt 
# GREEN='\033[0;32m'       #Giving color in the terminal input
# NC='\033[0m'
# echo -n "Enter your name:" 
# read name
# echo "Hello, ${name}"

# read -sp "Enter your name:" name
# echo -e "${GREEN}Hello, $name"

#normal p-> jo type karoge wo terminal me dikhega..-sp means jo type karoge wo terminal me nei dikhega.

#Note: Echo bydefault adds new Line character,to avoid it add -n




#Creating Files in BASH
echo "Welcome to backend"> welcome.txt
# To see the inside content of a file..

#here document syntax
# cat > welcome.txt <<EOL
# Welcome to backend devlopment.
# I am super Excited!
# EOL 




# Creting Folders..mkdir <folder_name>
# mkdir hello/inside 

#creating multiple Folders...
# mkdir -p {hello.welcome,nice,config}



# String operations...
# echo "hello">example.txt

# stream editor i-> inplace edit, s/ -> search and replace (Line By Line)
# sed -i 's/hello/Backend/g' example.txt




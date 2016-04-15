#!/bin/bash 
# run your script with sudo privileges with SCRIPTNAME.SH
sudo multioption.sh
# clean the console
clear
echo -e "\e[32m" #Add some color, only you will need change the code "32"
echo "Hey hi! Im a script test" #first message.
echo "These are my options" #add more messages if you need it.
echo "Hey hi! Im a script test"
echo "1) Say Hi there"
echo "2) Say Happy Birthday"
echo "3) Say Im jumping"
echo "4) Say Im playing"
echo "5) Exit"
# Space
read VAR #read the variable with name "VAR"

if [ "$VAR" = 1 ]; then # the first line need "if" to run the vars. If you need other variable, you need change the number "1"
  clear # clean the console.
  echo -e "\e[35m" #changing the color to purple.
  sudo "Hi there!" #Here write a command. Do not apply the var "&&"
  read -n1 -r -p 'Press any key to exit' # pause and clean
  clear
  
elif [ "$VAR" = 2 ]; then # then, the next variables need "elif"
  clear # Clean the console
  echo -e "\e[35m" #changing the color to purple.
  sudo "Happy birthday!" #Here write a command. Do not apply the var "&&"
  read -n1 -r -p 'Press any key to exit' # pause and clean
  clear # clear all
  
elif [ "$VAR" = 3 ]; then # remember this, the next variables need "elif"
  clear # Clean the console
  echo -e "\e[35m" #changing the color to purple.
  sudo "Im jumping!" #Here write a command. Do not apply the var "&&"
  read -n1 -r -p 'Press any key to exit' # pause and clean
  clear # clear all
  
elif [ "$VAR" = 4 ]; then # remember this, the next variables need "elif"
  clear # Clean the console
  echo -e "\e[35m" #changing the color to purple.
  sudo "Im playing!" #Here write a command. Do not apply the var "&&"
  read -n1 -r -p 'Press any key to exit' # pause and clean
  clear # clear all
  
elif [ "$VAR" = 5 ]; then # Latest command to Exit.
  clear #first clean the console, then, exit.
  exit

elif [ "$VAR" = "" ]; then # if you don't write a command, the script will say this.
	clear
	echo -e "\e[31m"
	echo "Option invalid"
	echo -e "\e[32m"
else
	clear
	echo -e "\e[31m"
	echo "Option invalid"
	echo -e "\e[32m"
fi # Use "fi" to close the script.

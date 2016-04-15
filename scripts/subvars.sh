#!/bin/bash 
# clean the console
clear
echo "Hey hi! Im a script test" #first message.
echo "These are my options" #add more messages if you need it.
echo "1) Test SubVars."
echo "2) Exit"
# Space
read VAR #read the variable with name "VAR"

if [ "$VAR" = 1 ]; then # the first line need "if" to run the vars. If you need other variable, you need change the number "1"
  echo "Type y or n to test it." #Here, you don't need the var "read"
  # reading subvars
  read subVAR
     if [ "$subVAR" = y ]; then
       echo "Yes"
       read -n1 -r -p 'Press any key to exit.'
       clear
       exit
     
     elif [ "$VAR" = n ]; then # then, you need "elif"
       echo "Not"
       read -n1 -r -p 'Press any key to exit.'
       clear
       exit
       
     elif [ "$VAR" = "" ]; then # if you don't write a command in the subvar, the script will say this.
       clear
       echo -e "\e[31m"
       echo "Option invalid"
       echo -e "\e[32m"
      else
       clear
       echo -e "\e[31m"
       echo "Option invalid"
       echo -e "\e[32m"
    fi # closing the subvar.
  
elif [ "$VAR" = 2 ]; then # Latest command to Exit.
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

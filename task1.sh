#!/bin/bash



fallsofcount=0
countofcorrect=0
RED='\e[31m'
GREEN='\e[32m'
RESET='\e[0m'


declare -a num_array
while true;
do
((fallsofcount++))
rand=$((RANDOM % 10))
echo -e "how much time turned ? : $fallsofcount"
read -p "enter number beetween 0-9 " user_input
case "${user_input}" in
        [0-9])
            user_number=$user_input

            if (( $user_number == $rand ))
		then
                	((countofcorrect++))
                	echo "Random number: $rand"
			randomnumers="${GREEN}${random_number}${RESET}"
            	else
                	echo "Random number: $rand"
			randomnumers="${RED}${rand}${RESET}" 
            fi

            num_array+=(${randomnumers})
	    ;;
        q)
            echo "error"
            break
        ;;
        *)
            echo "Not valid input"
            echo "Please repeat"
        ;;
    esac

    true_per=$((countofcorrect*100/fallsofcount))
    errorofcount=$((100-true_per))

    echo -e "point: ${GREEN}${true_per}%${RESET} Miss: ${RED}${errorofcount}%${RESET}"
    
    if [ ${#num_array[@]} -gt 10 ]; then
        echo -e "Numbers: ${num_array[@]: -10}"
    else
        echo -e "Numbers: ${num_array[@]}"
    fi


done
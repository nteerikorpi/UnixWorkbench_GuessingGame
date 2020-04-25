echo "Welcome to the Guessing Game!"


function guessloop {
	files=$(ls -l |grep "^-"|wc -l)
	echo "How many files are in the current directory?"

	while read guess
	do
        	if [[ $guess -eq $files ]]
        	then
        	break

        	else
                if [[ $guess -gt $files ]]
                then
                echo "Your guess is too high. Guess again:"

                elif [[ $guess -lt $files ]]
                then
                echo "Your guess is too low. Guess again:"
                fi
        fi
done

echo "Congratulations! You are correct."
}


guessloop

echo " "
echo "End Program"

exit


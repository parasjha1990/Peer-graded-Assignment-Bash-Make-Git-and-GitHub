clear
echo "Please guess the number of files in the working directory!"
echo "Your guess: "
read guess

function get_file_number {
	local number=$(ls -l | wc -l)-1
	echo $number
}

correct=$(get_file_number)

while [[ $guess -ne $correct ]]
do
	if [[ $guess -gt $correct ]]
	then
		echo "Sorry, your guess was too high..."
	else 
		echo "Sorry, your guess was too low..."
	fi
	echo
	echo "Guess again: "
	read guess
done

echo "Congratulations! You guessed the right number!"

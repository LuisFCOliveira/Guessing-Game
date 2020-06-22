
function guess {

number=$(ls | wc -l)

directory=$(pwd)
echo "How many files are in $directory?"
read guess 

while [[ $number -ne $guess ]]
do
	if [[ $guess -lt $number ]]
	then
		echo "Your guess is lower than the correct number, try again."
		read guess
	else
		echo " Your guess is higher than the correct number, try again."
		read guess
	fi
done

echo "Congratilations, that is correct, there are $number files in this directory"

}

guess

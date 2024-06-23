#!/user/bin/env bash



txt=""
echo "Info Text Contains the lines:"
txt=$(cat "/Basic Commands/SampleData/InfoText.txt")
echo $txt
cat -n "/Basic Commands/SampleData/InfoText.txt"

echo "Pick a word and it find all the instances from the text"
read input

echo "It was found in the lines:"
grep $input "/Basic Commands/SampleData/InfoText.txt"

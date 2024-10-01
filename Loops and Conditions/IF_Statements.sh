

if [[ $1 -eq 1 ]]; then
	echo "1 was passed in the first parameter"
elif [[ $1 -gt 2 ]]; then
	echo "number passed is greater than 2"
else
	echo "first parameter is not 1 or greater than 2"
fi 1> output_log.txt
2> error_log.txt


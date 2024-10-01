
array=(1 2 3 4 5 6 7 8 9 10)
for i in "${array[@]}"; do
	echo "This is the number $i"
	if [[ $i -eq 4 ]]; then 
		echo "I dislike it. very much"
		continue
	fi
	if [[ $i -eq 8 ]]; then
		echo "it is my favourite. So lets stop"
		echo "Btw there are a total of ${#array[@]} numbers"
		echo "the full list is ${array[@]}"
		break
	fi
	echo "I like it"
done
2>> error_log.txt

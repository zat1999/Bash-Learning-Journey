
array=(1 2 3 4 5 6 7 8 9 10)
shoppingList=("eggs" "cheese" "tomato")

for i in "${array[@]}"; do
	echo "Index: $i"
	for n in "${shoppingList[@]}"; do
		echo "I need $n"
		if [[ $n -eq "tomato" ]]; then
			echo "I don't need a tomato"
			break 2
			#breaks out of all loops
		fi
	done
done
2>> error_log.txt

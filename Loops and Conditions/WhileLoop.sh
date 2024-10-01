arr=(a b c d e f)
i=0
echo "Contents : ${arr[@]}"
echo "Length   : ${#arr[@]}"
while [ $i -lt ${#arr[@]} ]; do
	echo "${arr[$i]}"
	i=$(expr $i + 1)
done

i=0
echo "Contents : ${arr[@]}"
echo "Length   : ${#arr[@]}"
while [ $i -lt ${#arr[@]} ]; do
	echo "${arr[$i]}"
	((i++))
done




###    [@] expands the array
###    #amounts of elements
###
###
###
###

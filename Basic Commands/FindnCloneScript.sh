#!bin/bash 

#using cat to clone files, can also be used to read contents of files
#note: when declaring variables no spaces between the =, else it is considered a function
# > creates a new file and writes, >> appends to file
filename=""
i=1;
while (( $# > 0 )); do
	filename="$1";
	echo "Cloning the File: $filename"
	cat $filename >> "Clone$i.txt"
	i=$((i + 1));
	shift 1
done


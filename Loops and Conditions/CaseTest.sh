
echo "What is your name?"
read name

case $name in
	Josh)
		echo -n "Josh? Reall?"
		;;
	Timmy | Alfred)
		echo -n "interesting..."
		;;
	*)
		echo -n "nice to meet you $name"
		;;

esac


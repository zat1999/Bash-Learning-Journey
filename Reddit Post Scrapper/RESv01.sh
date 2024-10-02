

function display_all
{
	cd Post/$(date -I) 
	echo "Displaying all Titles"
	jq '.[]' Entries.json
	printf '\nFeel Free to Scroll.\nPress any key to return to the menu'	
	read -n 1 -s 	
}

function search_flair
{
	cd Post/$(date -I) 
	printf "Searching by Flair.\nEnter your flair:"
	read flair 
    jq --arg flair "$flair" '.[] | select(.link_flair_text == $flair) | .title' Entries.json
	read -n 1 -s 	
}

function extract_subreddit
{
	echo "What Subreddit do you want to pull from?"
	read subreddit
	url="https://www.reddit.com/r/sub.json"
	url=${url//sub/$subreddit}
	#Goes to storage directory and makes a new directory for new folder
	if ! cd Post; then
			echo "No Directory for Post"
			echo "Making New Folder..."
			mkdir Post && cd Post || { echo "Failed in creating/navigating to Post directory" >> errorlog.log; exit 1; }
	fi 
	today=$(date -I)
	if ! cd "$today"; then
		echo "Creating a New Folder for today's Entries"
		mkdir -p "$today" && cd "$today" || { echo "Failed in creating/navigating to today's directory" >> errorlog.log; exit 1; }
	fi

	if ! curl -L "$url" | jq '[.data.children[] | {title: .data.title, selftext: .data.selftext, link_flair_text: .data.link_flair_text, url: .data.url, permalink: .data.permalink }]' > Entries.json; then
		echo "Failed to fetch or process subreddit data" >> errorlog.log
		exit 1
	fi
}

while :
do
    clear
    cat<<EOF
    ==============================
    Reddit Extractor Scrapper (RES)
    ------------------------------
    Please enter your choice:

    Print All Titles (1)
    Search by Flair (2)
    Advance Search(3)
    Extract New Subreddit (4)
    (Q)uit
    ------------------------------
EOF
    read -n1 -s
    case "$REPLY" in
    "1")  display_all					;;
    "2")  search_flair 	;;
    "3")  echo "Search by Title" 	;;
    "4")  extract_subreddit            ;;
    "Q") exit                      			;;
    "q")  exit   								;; 
     * )  echo "Invalid option"     	;;
    esac
    sleep 1
done



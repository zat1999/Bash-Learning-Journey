#!/bin/bash

deploy=false
uglify=false


while (( $# > 1 )); do case $1 in
	--deploy) deploy="$2";;
	--uglify) uglify="$2";;
	*) break;
	esac; shift 2
done

if [[ $deploy == true ]]; then
  echo "will deploy... deply = $deploy"
fi

if [[ $uglify == true ]]; then
  echo "will uglify... uglify = $uglify"
fi


# $#. refers to the number of arguments, so if more than 1 arguement exist continue
# case $1 in. checks the first argument for different conditions until esac(case backwards)
# --deploy) deploy="$2";;. if arg is --deploy, the value of the 2nd argument $2 is assigned to deploy
# --uglify) uglify="$2";;. same as above
# *) break any other arg break.
# shift 2 the two arguments (the name and value) so the next pair can be read. $# changes 


# $1 reads the argument name variable. proceeds with the pattern matching
# if the pattern matches with --deploy/--uglify the 2nd argument value is 
# read and assigned to the variables. so essentially single ) is tied with
# the case statement to enable pattern matching. 
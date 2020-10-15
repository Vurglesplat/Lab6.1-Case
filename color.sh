#!/bin/bash

# file color.sh
# brief demonstrating the abiltiy to switch an if to a case
# author brandon.boras
# date 10/14/2020

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
magenta='\033[0;35m'
default='\033[0m'

read -p "What is your favorite color (red, green, blue, yellow or magenta)? " color
color=${color^^}

case ${color} in
	"RED")
		echo "${color} selected"
		selected_color=$red
		;;
	"BLUE")
		echo "${color} selected"
		selected_color=$blue
		;;
	"GREEN")
		echo "${color} selected"
		selected_color=$green
		;;
	"YELLOW")
		echo "${color} selected"
		selected_color=$yellow
		;;
	"MAGENTA")
		echo "${color} selected"
		selected_color=$magenta
		;;
	*)
		echo "Invalid color selected"
		exit 1
		;;
esac
exit 0

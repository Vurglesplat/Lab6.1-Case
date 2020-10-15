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

if [ -z ${color} ]; then
	echo "You didn't enter anything!"
	exit 1
else
	echo "${color} selected"
	if [ ${color} = "RED" ]; then
		selected_color=$red
	elif [ ${color} = "BLUE" ]; then
		selected_color=$blue

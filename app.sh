#!/bin/bash

	setterm -blank 1
    PLAYER="omxplayer -o hdmi "
    
	while :
	do
		SCRIPT=$(readlink -f "$0")
		SCRIPTPATH=$(dirname "$SCRIPT")
		# echo $SCRIPTPATH
		
		for entry in "$SCRIPTPATH"/"files"/*
		do
			# echo "$entry"
			$PLAYER $entry
		done
	done
	
#!/bin/sh
# Let's detect first if Xorg is not running
if ! pidof Xorg &>/dev/null; then
	echo "Do you wish to start GUI ?"
	select yn in "Yes" "No"; do
		case $yn in
			Yes ) 
				if groups $USER | grep &>/dev/null '\input\b'; then
					echo "User has input group"
					startx
				else
					echo "User does not have input permissions, refusing to start GUI"
					echo "Make sure to add yourself to the input group !"
				fi
			break;;
			No ) 
			break;;
		esac
	done
fi

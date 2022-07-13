#!/bin/sh
#
# gasoline_smooth_clean Script
#
# This script removes all unwanted output files after smoothing the
# a tipsy binary files with Gasoline.
#
# USAGE: bash gasoline_smooth_clean.sh files
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

if [ $# != 1 ]
		then
		echo  "USAGE: bash gasoline_smooth_clean.sh files" # Check the parameters
		exit 1;
fi

file="$1"

rm "$file".acc
rm "$file".accg

rm "$file".PdV
rm "$file".PdVpres
rm "$file".PdVvisc

rm "$file".pot

rm "$file".BSw

rm "$file".divv

rm "$file".mumax

rm "$file".dt
rm "$file".SPHdt

rm "$file".gradrho

exit 0


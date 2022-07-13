#!/bin/sh
#
# gasoline_check_params Script
#
# This script checks the log files compiler switches and parameters.
#
# USAGE: bash gasoline_check_params.sh file
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

if [ $# != 1 ]
		then
		echo  "USAGE: bash gasoline_check_params.sh files" # Check the parameters
		exit 1;
fi

file="$1"

if grep -q "CONDENSED_DENSITY " "$file"; then
    echo CONDENSED_DENSITY
fi

if grep -q "ISENTROPIC " "$file"; then
    echo ISENTROPIC
fi

if grep -q "PRES_GEOM" "$file"; then
    echo PRES_GEOM
fi

if grep -q "MEAN_PRESS_TEMP_WOOLFSON" "$file"; then
    echo MEAN_PRESS_TEMP_WOOLFSON
fi

if grep -q "bViscosityLimiter: 1" "$file"; then
    echo "bViscosityLimiter: 1"
fi

if grep -q "bViscosityLimiter: 0" "$file"; then
    echo "bViscosityLimiter: 0"
fi
exit 0


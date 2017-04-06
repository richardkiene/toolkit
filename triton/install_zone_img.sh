#!/bin/bash

# Example: ./install_zone_img cmon experimental CMON-53
# $1 = API name
# $2 = channel name
# $3 = branch name

API=$1;
I=`updates-imgadm list -C $2 name=$API | grep $3 | awk '{print "'$API'@"$3 }'`;
sdcadm up -C $2 $I;

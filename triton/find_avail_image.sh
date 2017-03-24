#!/bin/bash

# $1 must be a named channel from `sdcadm channel list`
# $2 must be an image name from `imgadm -C <channel> list`
# Example ./find_avail_img experimental cmon-agent

updates-imgadm -C $1 list name=$2;

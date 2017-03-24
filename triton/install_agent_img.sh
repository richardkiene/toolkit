#!/bin/bash

# $1 channel
# $2 uuid of image
# $3 name of output file you want

updates-imgadm get-file -C $1 $2 > $3;
apm install $3;

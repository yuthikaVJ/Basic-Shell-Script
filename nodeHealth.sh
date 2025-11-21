#!/bin/bash

########################
# Author: RealSteel
# Date : 21/11/25
#
# This is a output the node health
#
# Version: v1
#
##########################

set -x #debug mode
set -e #exit the script when there is an error
#set -o pipefail

#Check Disk Space
df -h

#Check Memory 
free -g

#Check CPU Load
nproc

#Check Amazon Processes
ps -ef | grep amazon | awk -F " " '{print $2} '
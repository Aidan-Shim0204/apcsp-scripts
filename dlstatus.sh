#!/bin/bash

PING="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"

echo 

for stat in $PING ; do
ping "$stat.mpwteach.com" -c 1

	if [ $? -eq 0 ] ; then
	  echo "$stat : alive"; echo
          continue
        else 
	  echo "$stat: dead"; echo
	  continue
 	fi
       done
exit 0

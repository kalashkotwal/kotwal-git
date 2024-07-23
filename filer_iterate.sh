#!/bin/bash

names="/home/adminuser/scripts/name"

for name in $(cat $names)
do
	echo Characters of Hera Pheri is $name
done

#!/bin/bash

echo Hi user .. Welcome to election
echo What is your age?
read age 

if [ $age -ge 18 ]
then
	echo you can vote.
else
	echo sorry you cannoty vote.
fi

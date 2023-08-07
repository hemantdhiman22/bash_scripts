#!/bin/bash


command=/usr/bin/htop

if [ -f $command ]
then
	echo "command is found"
else
	echo "command not found"
	yum update -y && yum install htop -y 
fi

$command

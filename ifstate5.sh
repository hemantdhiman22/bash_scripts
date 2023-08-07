#!/bin/bash


command=htop

if command -v $command
then
	echo "$command is available"
else
	echo "$command is not avialable"
	yum update -y && yum install $command -y
fi

$command

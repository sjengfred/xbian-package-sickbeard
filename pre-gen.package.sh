#!/bin/bash

DIR="content/usr/local/share/sickbeard"

if [ "$(ls -A $DIR)" ]; then
     	printf "\nDirectory $DIR is not empty, make sure it is up to date before building the package\n"
	git --git-dir=$DIR/.git --work-tree=$DIR fetch > /dev/null 
	printf "\ngit status reports:\n"
	git --git-dir=$DIR/.git --work-tree=$DIR status
else
    	printf "\n$DIR is Empty, cloning repository\n"
	git clone https://github.com/sjengfred/Sick-Beard $DIR
fi

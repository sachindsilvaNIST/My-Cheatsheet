#!/bin/bash

if [ -z "$1" ]; then
	echo "Error! Commit message is required.."
	exit 1
fi

git add .
git commit -m "$1"

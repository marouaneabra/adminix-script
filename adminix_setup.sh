#! /bin/bash

# Date: 5/31/18
# This sh script program sets up Adminix in your local machine

# Initial flag settings for OS check
# Mac
mac=false
# x86_64
x=false
# amd64
amd=false
# armhf
arm=false

# Initial check for OS

# Check for Mac
# Check for x86_64
MACHINE=$(uname -m)
if [[ $MACHINE == "x86_64" ]]
then
    x=true
fi
echo "$x"

# Check for amd64
# Check for armhf

# Check for must have libs

# Check if git is installed
git --version 2>&1 >/dev/null
IS_GIT=$?
if [ $IS_GIT -ne 0 ]
then
    echo "Git is not installed"
else
    echo "Git is installed"
fi

INFO=$(cat /etc/os-release)

if [[ $INFO == *"Raspbian"* ]] || [[ $INFO == *"Debian"* ]]
then
    echo "It's a Raspberry"
else
    echo "It's not a Raspberry"
fi
echo "$INFO"

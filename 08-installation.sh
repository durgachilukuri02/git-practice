#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run this priveleg"
    exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
then
   echo "Git is not installed,going to install it.."
   dnf install git -y
   if [ $? -ne 0 ]
   then
       echo "git installation is not success...check it"
       exit 1
   else
       echo "git istallation is success"
   fi
else
    echo "Git is already installed,nothing to do.."    
fi
#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo "$1 is...faild"
       exit 1
    else
       echo "$2 is...success"
    fi      
}

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
   VALIDATE $? "installing Git"
else
    echo "Git is already installed,nothing to do.."    
fi

dnf list installed mysql

if [ $? -ne 0 ]
then
   echo "Mysql is not installed,going to install it.."
   dnf install mysql -y
   VALIDATE $? "installing Mysql"
else
    echo "mysql is already installed,nothing to do.."
fi         
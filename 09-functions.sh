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

VALIDATE $? "Listing git"

# if [ $? -ne 0 ]
# then
#    echo "Git is not installed,going to install it.."
#    dnf install git -y
#    if [ $? -ne 0 ]
#    then
#        echo "git installation is not success...check it"
#        exit 1
#    else
#        echo "git istallation is success"
#    fi
# else
#     echo "Git is already installed,nothing to do.."    
# fi

# dnf list installed mysql

# if [ $? -ne 0 ]
# then
#    echo "Mysql is not installed,going to install it.."
#    dnf install mysql -y
#    if [ $? -ne 0 ]
#    then 
#       echo "mysql installation is not success...check it"
#       exit 1
#    else
#       echo "mysql istallation is success"
#     fi
# else
#     echo "mysql is already installed,nothing to do.."
# fi         
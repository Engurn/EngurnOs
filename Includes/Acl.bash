#!/bin/bash

# The following Commands will set Advanced user permissions allowing
# More users and groups access to folders.


SetAcl()
{
#  $1 options
#  $2 users
#  $3 permissions
#  $4 folder

sudo setfacl -"$1" "$2":"$3" "$4"
}

#DelAcl()
#{
 username=$1
 folder=$2
 sudo setfacl -x $username $folder
#}

GetAcl()
{
#  $1 = folder

sudo getfacl "$1";
}
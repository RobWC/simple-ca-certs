#!/bin/bash
OPENSSL=`which openssl`
KEYNAME=$1
REQNAME=$2
SELFNAME=`basename $0`

if [ $KEYNAME != "" ] & [  $REQNAME != "" ] 
then 
    $OPENSSL req -newkey rsa:2048 -keyout $KEYNAME  -config ./ca/openssl.cnf -out $REQNAME 
else
    echo "You need to specify the name of the keyfile and the name of the CSR file"
    echo "EXAMPLE: "$SELFNAME" keyname.key keyname.csr"
fi

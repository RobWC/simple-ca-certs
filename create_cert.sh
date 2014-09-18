#!/bin/bash
OPENSSL=`which openssl`
SELFNAME=`basename $0`
CONFIG="./ca/openssl.cnf"

if [[ -n $1 ]]
then
    #generate key
    NAME=$1
    mkdir $NAME
    $OPENSSL genrsa -out $NAME"/"$NAME.key 2048
    $OPENSSL req -new -key $NAME"/"$NAME.key -out $NAME"/"$NAME.csr -config $CONFIG
    $OPENSSL ca -config $CONFIG -out $NAME"/"$NAME.pem -infiles $NAME"/"$NAME.csr
else
    echo "You need to specify the cert name"
    echo "EXAMPLE: "$SELFNAME" testcert1"
fi

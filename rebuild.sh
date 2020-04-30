#!/bin/bash

PROJECT="home:neochapay:mer:crossutils"
PACKAGE_LIST=`osc ls $PROJECT`

for PACKAGE_NAME in $PACKAGE_LIST
do
    echo "    $PACKAGE_NAME"
    osc service remoterun $PROJECT/$PACKAGE_NAME
done
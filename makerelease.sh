#!/bin/bash

SOURCE_PROJECT="home:neochapay:mer:core"
DEST_PROEJCT="home:neochapay:mer:release:2018.04:core"
PACKAGE_LIST=`osc ls $SOURCE_PROJECT`

for PACKAGE_NAME in $PACKAGE_LIST
do
    echo "    $PACKAGE_NAME"
    osc copypac $SOURCE_PROJECT $PACKAGE_NAME $DEST_PROEJCT $PACKAGE_NAME
done

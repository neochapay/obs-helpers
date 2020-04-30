#!/bin/bash

SOURCE_PROJECT="home:neochapay:mer:tools"
DEST_PROEJCT="home:neochapay:mer:release:2019.11:tools"
PACKAGE_LIST=`osc ls $SOURCE_PROJECT`

for PACKAGE_NAME in $PACKAGE_LIST
do
    echo "    $PACKAGE_NAME"
    osc copypac $SOURCE_PROJECT $PACKAGE_NAME $DEST_PROEJCT $PACKAGE_NAME
done

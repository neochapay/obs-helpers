#!/bin/bash

PROJECT="home:neochapay:mer:crossutils"
PACKAGE_LIST=`osc ls $PROJECT`

for PACKAGE_NAME in $PACKAGE_LIST
do
    echo "    $PACKAGE_NAME"
    osc co $PROJECT/$PACKAGE_NAME
    cd $PROJECT/$PACKAGE_NAME
    cur_rev=$(cat _service | grep "param name=\"revision\"" | cut -d\> -f2 | cut -d\< -f1)
    echo $cur_rev
    if [ -n $cur_rev ]
    then
        sed -i "s/$cur_rev//" _service
	osc ci -n
    fi
    cd ../../
done
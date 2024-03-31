#!/bin/bash

MY_DIR="$(dirname "$(readlink -f "$0")")"

COUNT=`ps -eaf | grep ${MY_DIR}/oci-help | grep -v grep | wc -l `

if [[ $COUNT -gt 0 ]]; then
    echo "stopging ${MY_DIR}/oci-help"
    ps -eaf | grep ${MY_DIR}/oci-help | grep -v grep | awk '{print "kill -9 "$2}' | sh
else
    echo "${MY_DIR}/oci-help is not running"
fi

#!/bin/bash

MY_DIR="$(dirname "$(readlink -f "$0")")"
echo "staring ${MY_DIR}/oci-help"

nohup echo "1
2
2" | ${MY_DIR}/oci-help >> log.txt 2>&1 &

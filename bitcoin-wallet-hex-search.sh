#!/bin/bash

# This script will search the file/drive given as an argument for a bitcoin wallet.

# Made this script while looking for an old wallet I think I had on an old hard drive. --tvg


FILE=$1

hexdump -v -e '1000/1 "%02X" "\n"' $FILE | grep -m1 "01036B65794104" && echo "$FILE has a bitcoin wallet in it."

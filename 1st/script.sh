#!/bin/bash

FILENAME=$1
IP=10.1.192.38

cat "$FILENAME" | grep $IP | awk ' { match($0, /.+sid=\/(.+)\/&/, sid);} 
{print sid[1];}' | sort

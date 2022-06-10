#!/bin/bash

cat $1 | grep 10.1.192.38 | awk ' { match($0, /.+sid=\/(.+)\/&/, sid);} 
{print sid[1];}' | sort

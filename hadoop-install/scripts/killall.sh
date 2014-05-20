#!/bin/bash

procs=`ps wwaux | grep java | grep Dproc_ | grep -v grep | wc -l`
echo "Found ${procs} processes alive. Killing ..."
ps wwaux | grep java | grep Dproc_ | grep -v grep | awk '{print $2}'  | xargs kill -9
